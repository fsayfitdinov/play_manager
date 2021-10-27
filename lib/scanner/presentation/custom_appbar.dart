import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() onExitButtonPress;
  const CustomAppBar({
    Key? key,
    required this.onExitButtonPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        'Play Manager',
        style: TextStyle(fontFamily: 'Ubuntu'),
      ),
      actions: [
        IconButton(
          onPressed: onExitButtonPress,
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
