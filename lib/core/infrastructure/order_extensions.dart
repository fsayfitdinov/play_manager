import 'package:play_manager/core/domain/order.dart';

extension OrderModelX on OrderModel {
  String getDuration() {
    final time = endDateTime.difference(startDateTime);
    return "${time.inHours.toString().padLeft(2, '0')}:${time.inMinutes.remainder(60).toString().padLeft(2, '0')}";
  }
}
