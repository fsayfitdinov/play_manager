import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play_manager/auth/shared/providers.dart';
import 'package:play_manager/core/presentation/constants.dart';

import 'package:play_manager/core/presentation/default_button.dart';

class SignInForm extends HookConsumerWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FocusNode passNode = useFocusNode();
    final nameController = useTextEditingController();
    final passController = useTextEditingController();

    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 48),
        children: [
          const Center(
            child: Hero(
              tag: 'splash',
              child: Text(
                'Play Manager',
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: kMainColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Логин'),
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(passNode);
            },
          ),
          const SizedBox(height: 32),
          TextFormField(
            controller: passController,
            focusNode: passNode,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(labelText: 'Пароль'),
            onFieldSubmitted: (_) async {
              await signIn(
                context,
                nameController.text,
                passController.text,
                ref,
              );
            },
          ),
          const SizedBox(height: 32),
          DefaultGradientBtn(
            title: 'Войти',
            press: () async {
              await signIn(
                context,
                nameController.text,
                passController.text,
                ref,
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> signIn(
    BuildContext context,
    String login,
    String password,
    WidgetRef ref,
  ) async {
    if (login.isNotEmpty && password.isNotEmpty) {
      await ref
          .read(authNotifierProvider.notifier)
          .signIn(login: login, password: password);
    }
  }
}
