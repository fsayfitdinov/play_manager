import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:play_manager/core/domain/order.dart';
import 'package:play_manager/sales/presentation/components/data_row_list.dart';
import 'package:play_manager/sales/presentation/components/headers.dart';

class SalesList extends StatelessWidget {
  final List<OrderModel> orders;
  final RefreshController refreshController;
  final Function() onRefresh;

  const SalesList({
    Key? key,
    required this.orders,
    required this.refreshController,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeaders(),
        DataRowList(
          onRefresh: onRefresh,
          refreshController: refreshController,
          orders: orders
            ..sort((a, b) => b.isVip ? 1 : -1)
            ..sort((a, b) => b.endDateTime.compareTo(a.endDateTime)),
        ),
      ],
    );
  }
}
