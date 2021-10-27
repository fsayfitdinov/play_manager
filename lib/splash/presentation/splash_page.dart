import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:play_manager/auth/shared/providers.dart';
import 'package:play_manager/core/presentation/constants.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () => ref.read(authNotifierProvider.notifier).checkAndUpdateStatus(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'splash',
          child: TextLiquidFill(
            loadDuration: const Duration(seconds: 1),
            text: 'Play Manager',
            waveColor: kMainColor,
            boxBackgroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 40.0,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
