import 'package:flutter/material.dart';

import 'data_header.dart';

class CustomHeaders extends StatelessWidget {
  const CustomHeaders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          flex: 2,
          child: DataHeader('Номер чека'),
        ),
        Expanded(
          flex: 3,
          child: DataHeader('Услуга'),
        ),
        Expanded(
          flex: 3,
          child: DataHeader('Комната'),
        ),
        Expanded(
          flex: 2,
          child: DataHeader('Время'),
        ),
      ],
    );
  }
}
