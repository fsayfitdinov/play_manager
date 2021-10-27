import 'package:flutter/material.dart';

class CustomDataRow extends StatelessWidget {
  final String text;
  final bool isExpiring;
  const CustomDataRow(
    this.text, {
    Key? key,
    this.isExpiring = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 40,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromRGBO(222, 226, 230, 1),
            width: 3,
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        maxLines: 2,
      ),
    );
  }
}
