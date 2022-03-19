import 'package:flutter/material.dart';

import 'package:play_manager/core/presentation/constants.dart';

class DefaultGradientBtn extends StatelessWidget {
  final String title;
  final bool enabled;
  final Function() press;

  const DefaultGradientBtn({
    Key? key,
    required this.title,
    required this.press,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return enabled
        ? InkWell(
            onTap: press,
            borderRadius: BorderRadius.circular(30),
            child: Ink(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: kMainGradient,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Align(
                child: Text(
                  title,
                  style: kButtonTextStyle,
                ),
              ),
            ),
          )
        : Ink(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromRGBO(196, 20, 50, 1).withOpacity(0.5),
              gradient: kMainGradient,
            ),
            child: Align(
              child: Text(
                title,
                style: kButtonTextStyle,
              ),
            ),
          );
  }
}
