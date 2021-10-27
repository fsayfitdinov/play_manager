import 'package:flutter/material.dart';

import 'package:play_manager/core/presentation/constants.dart';

class CustomFAB extends StatelessWidget {
  final void Function() onPress;
  const CustomFAB({Key? key, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPress,
      backgroundColor: kMainColor,
      child: const Icon(Icons.camera),
    );
  }
}
