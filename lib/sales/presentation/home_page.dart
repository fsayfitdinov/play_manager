import 'dart:io';

import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play_manager/core/application/barcode_scan_notifier.dart';
import 'package:play_manager/sales/shared/providers.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:play_manager/core/presentation/errors.dart';
import 'package:play_manager/core/shared/providers.dart';
import 'package:play_manager/main.dart';

import 'custom_appbar.dart';
import 'custom_fab.dart';
import 'error_with_retry.dart';
import 'sales_list.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final RefreshController _refreshController = RefreshController();

  Future<void> _onRefresh() async {
    Future.microtask(() async {
      await ref.read(dataNotifierProvider.notifier).getOrders();
    });
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await ref.read(dataNotifierProvider.notifier).getOrders();

      if (Platform.isAndroid) {
        await AndroidAlarmManager.periodic(
          const Duration(minutes: 1),
          0,
          getOrdersInBackground,
          wakeup: true,
          rescheduleOnReboot: true,
        );
      }
    });
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dataNotifierProvider);
    barcodeScanListener();
    return Scaffold(
      appBar: CustomAppBar(
        onExitButtonPress: () async {
          await ref.read(dialogProvider).showExitDialog(context: context);
          if (Platform.isAndroid) {
            AndroidAlarmManager.cancel(0);
          }
        },
      ),
      body: (state.loading)
          ? const Center(child: CircularProgressIndicator())
          : state.hasError && !state.loading
              ? ErrorWithRetry(
                  error: state.error,
                  retry: ref.read(dataNotifierProvider.notifier).getOrders,
                )
              : SalesList(
                  orders: state.orders,
                  refreshController: _refreshController,
                  onRefresh: _onRefresh,
                ),
      floatingActionButton: CustomFAB(
        onPress: ref.read(barcodeScanNotifierProvider.notifier).scanBarCode,
      ),
    );
  }

  void barcodeScanListener() {
    ref.listen<BarcodeScanState>(
      barcodeScanNotifierProvider,
      (state) {
        state.maybeMap(
          error: (err) => ref.read(dialogProvider).showToast(
                context: context,
                content: err.failure!.maybeMap(
                  noConnection: (_) => ErrorStrings.noConnectionError,
                  server: (_) => _.message,
                  orElse: () {
                    return ErrorStrings.generalError;
                  },
                ),
              ),
          success: (_) async {
            await ref.read(dialogProvider).showSimpleDialog(
                  context: context,
                  title: 'Успешно',
                  content: 'Заказ был успешно закрыт',
                );
            await ref.read(dataNotifierProvider.notifier).getOrders();
          },
          loading: (_) => const Center(child: CircularProgressIndicator()),
          orElse: () {},
        );
      },
    );
  }
}
