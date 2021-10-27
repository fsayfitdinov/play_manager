import 'package:flutter/material.dart';

class DataHeader extends StatelessWidget {
  final String title;
  const DataHeader(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(240, 240, 240, 1),
        border: Border(
          bottom: BorderSide(color: Color.fromRGBO(222, 226, 230, 1), width: 3),
        ),
      ),
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
