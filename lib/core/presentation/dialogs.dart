import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:play_manager/auth/application/auth_notifier.dart';
import 'package:play_manager/core/presentation/errors.dart';

class Dialogs {
  final AuthNotifier _authNotifier;
  Dialogs(this._authNotifier);

  Future<void> showExitDialog({required BuildContext context}) async {
    await context.showFlashDialog(
      title: const Text('Выйти'),
      content: const Text('Вы действительно хотите выйти?'),
      negativeActionBuilder: (context, controller, _) {
        return TextButton(
          onPressed: () {
            controller.dismiss();
          },
          child: const Text('ОТМЕНА'),
        );
      },
      positiveActionBuilder: (context, controller, _) {
        return TextButton(
          onPressed: () async {
            controller.dismiss();
            await _authNotifier.signOut();
          },
          child: const Text(
            'ВЫЙТИ',
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }

  Future<void> showSimpleDialog({
    required BuildContext context,
    required String title,
    required String? content,
  }) async {
    await context.showFlashDialog(
      title: Text(title),
      content: Text(content ?? ErrorStrings.generalError),
      positiveActionBuilder: (context, controller, _) {
        return TextButton(
          onPressed: () async {
            controller.dismiss();
          },
          child: const Text('OK'),
        );
      },
    );
  }

  Future<void> showToast({
    required BuildContext context,
    required String? content,
  }) async {
    await context.showErrorBar(
      content: Text(content ?? ErrorStrings.generalError),
      duration: const Duration(seconds: 1),
    );
  }
}
