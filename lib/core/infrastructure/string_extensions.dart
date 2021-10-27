import 'package:intl/intl.dart';

extension StringX on String {
  String get formattedPrice {
    return NumberFormat.decimalPattern('uz').format(int.parse(this));
  }
}

extension DateTimeX on DateTime {
  String get formattedDate {
    return DateFormat("dd.MM.yyyy hh:mm").format(this);
  }

  bool get hasExpired {
    return DateTime.now().difference(this) > const Duration(minutes: 1);
  }
}
