import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:play_manager/core/application/barcode_scan_notifier.dart';
import 'package:play_manager/core/infrastructure/string_extensions.dart';
import 'package:play_manager/sales/shared/providers.dart';
import 'package:play_manager/core/presentation/errors.dart';
import 'package:play_manager/core/shared/providers.dart';
import 'package:play_manager/sales/presentation/custom_appbar.dart';
import 'package:play_manager/sales/presentation/custom_fab.dart';
import 'package:play_manager/sales/presentation/error_with_retry.dart';
import 'package:play_manager/sales/presentation/sales_list.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final RefreshController _refreshController = RefreshController();
  late Timer? timer;

  Future<void> _onRefresh() async {
    await ref.read(dataNotifierProvider.notifier).getOrders();
    _refreshController.refreshCompleted();
    if (ref.watch(dataNotifierProvider).orders.where((i) => i.endDateTime.hasExpired).isNotEmpty) {
      playRingtone();
    } else {
      stopRingtone();
    }
  }

  void playRingtone() {
    FlutterRingtonePlayer.play(
      android: AndroidSounds.alarm,
      ios: IosSounds.glass,
      looping: true, // Android only - API >= 28
      volume: 1, // Android only - API >= 28
      asAlarm: true, // Android only - all APIs
    );
  }

  void stopRingtone() {
    FlutterRingtonePlayer.stop();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      timer = Timer.periodic(const Duration(minutes: 1), (_) async {
        await ref.read(dataNotifierProvider.notifier).getOrders();
        if (ref.watch(dataNotifierProvider).orders.where((i) => i.endDateTime.hasExpired).isNotEmpty) {
          playRingtone();
        } else {
          stopRingtone();
        }
      });
      await ref.read(dataNotifierProvider.notifier).getOrders();
      if (ref.watch(dataNotifierProvider).orders.where((i) => i.endDateTime.hasExpired).isNotEmpty) {
        playRingtone();
      } else {
        stopRingtone();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
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
          if (Platform.isAndroid) {}
        },
      ),
      body: (state.loading)
          ? const Center(child: CircularProgressIndicator())
          : state.hasError && !state.loading
              ? ErrorWithRetry(
                  error: state.error,
                  retry: () async {
                    await ref.read(dataNotifierProvider.notifier).getOrders();
                    if (ref.watch(dataNotifierProvider).orders.where((i) => i.endDateTime.hasExpired).isNotEmpty) {
                      playRingtone();
                    } else {
                      stopRingtone();
                    }
                  },
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
      (pr, state) {
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
            if (ref.watch(dataNotifierProvider).orders.where((i) => i.endDateTime.hasExpired).isNotEmpty) {
              playRingtone();
            } else {
              stopRingtone();
            }
          },
          loading: (_) => const Center(child: CircularProgressIndicator()),
          orElse: () {},
        );
      },
    );
  }
}
