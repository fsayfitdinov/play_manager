import 'package:flutter/material.dart';

import 'package:play_manager/core/domain/failure.dart';
import 'package:play_manager/core/presentation/errors.dart';

class ErrorWithRetry extends StatelessWidget {
  final void Function() retry;
  final Failure? error;
  const ErrorWithRetry({
    Key? key,
    required this.retry,
    this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error?.maybeMap(
                  noConnection: (_) => ErrorStrings.noConnectionError,
                  server: (_) => _.message,
                  orElse: () {},
                ) ??
                ErrorStrings.generalError,
          ),
          ElevatedButton(
            onPressed: retry,
            child: const Text('Обновить'),
          ),
        ],
      ),
    );
  }
}
