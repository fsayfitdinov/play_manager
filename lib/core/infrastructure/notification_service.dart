import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: IOSInitializationSettings(),
    );

    flutterLocalNotificationsPlugin.initialize(
      settings,
      onSelectNotification: onClickedNotification,
    );
  }

  void onClickedNotification(String? payload) {}

  Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async {
    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'channel id',
          'channel name',
          importance: Importance.max,
        ),
        iOS: IOSNotificationDetails(),
      ),
    );
  }
}
