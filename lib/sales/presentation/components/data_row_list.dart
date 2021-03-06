// ignore_for_file: require_trailing_commas
import 'package:animate_do/animate_do.dart' as flash;
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'package:play_manager/core/domain/order.dart';
import 'package:play_manager/core/infrastructure/order_extensions.dart';
import 'package:play_manager/core/infrastructure/string_extensions.dart';

import 'package:play_manager/sales/presentation/components/data_row.dart';

class DataRowList extends StatelessWidget {
  final List<OrderModel> orders;
  final RefreshController refreshController;
  final Function() onRefresh;

  const DataRowList({
    Key? key,
    required this.orders,
    required this.refreshController,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SmartRefresher(
        header: const MaterialClassicHeader(),
        controller: refreshController,
        onRefresh: onRefresh,
        child: orders.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: orders.length,
                itemBuilder: (_, index) {
                  final item = orders[index];
                  return Container(
                    color: item.endDateTime.hasExpired ? const Color.fromRGBO(254, 224, 220, 1) : Colors.white,
                    child: GestureDetector(
                      onTap: () async {
                        await showFlashDialog(context, item);
                      },
                      child: flash.Flash(
                        animate: item.endDateTime.hasExpired,
                        infinite: true,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomDataRow(
                                item.id,
                                isExpiring: item.endDateTime.hasExpired,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomDataRow(
                                item.serviceName,
                                isExpiring: item.endDateTime.hasExpired,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomDataRow(
                                item.roomName,
                                isExpiring: item.endDateTime.hasExpired,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: CustomDataRow(
                                item.getDuration(),
                                isExpiring: item.endDateTime.hasExpired,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: Text('???????????? ???? ??????????????'),
              ),
      ),
    );
  }

  Future<void> showFlashDialog(
    BuildContext context,
    OrderModel item,
  ) async {
    return context.showFlashDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('?????????? ????????: ${item.id}'),
          const Divider(height: 30),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DialogRowText(label: '????????????', text: item.serviceName),
          DialogRowText(label: '??????????????', text: item.roomName),
          DialogRowText(label: '????????????', text: item.clientName),
          DialogRowText(label: '????????', text: "${item.price.formattedPrice} ??????"),
          DialogRowText(label: '????????????', text: "${item.delta} ??????"),
          DialogRowText(label: '???????? ????????????', text: item.startDateTime.formattedDate),
          DialogRowText(label: '???????? ??????????????????', text: item.endDateTime.formattedDate),
          DialogRowText(label: '??????????', text: item.getDuration()),
          DialogRowText(
            label: '??????????',
            text: '${item.totalPrice.formattedPrice} ??????',
            hasDivider: false,
          ),
        ],
      ),
    );
  }
}

class DialogRowText extends StatelessWidget {
  final String label;
  final String text;
  final bool hasDivider;

  const DialogRowText({
    Key? key,
    required this.label,
    required this.text,
    this.hasDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('$label: '),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Divider(
          color: hasDivider ? Colors.black12 : Colors.transparent,
        ),
      ],
    );
  }
}
