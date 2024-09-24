import 'dart:isolate';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:period_notification/notification_controller.dart';

class NotificationUtils {
  NotificationUtils._();

  static final NotificationUtils _instance = NotificationUtils._();

  factory NotificationUtils() => _instance;

  final AwesomeNotifications awesomeNotifications = AwesomeNotifications();

  static ReceivePort? receivePort;

  Future<void> initialize() async {
    await awesomeNotifications.initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'basic_channel',
          channelName: 'Basic notifications',
          channelDescription: 'Notification channel for basic tests',
          defaultColor: const Color(0xFF9D50DD),
          ledColor: Colors.white,
        )
      ],
      channelGroups: [
        NotificationChannelGroup(
          channelGroupKey: 'basic_channel_group',
          channelGroupName: 'Basic group',
        )
      ],
      debug: kDebugMode,
    );
  }

  Future<void> setListener() async {
    await awesomeNotifications.setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      onNotificationCreatedMethod:
          NotificationController.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayedMethod,
      onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod,
    );
  }

  Future<void> checkPermission() async {
    bool isAllowed = await awesomeNotifications.isNotificationAllowed();

    if (!isAllowed) {
      awesomeNotifications.requestPermissionToSendNotifications();
    }
  }

  Future<void> createNotification({
    required String channelKey,
    required int id,
  }) async {
    await awesomeNotifications.createNotification(
      content: NotificationContent(
        id: id,
        channelKey: channelKey,
        title: 'Simple Notification with $id',
        body: 'Simple body',
      ),
      schedule: NotificationInterval(
        repeats: true,
        interval: 60,
        allowWhileIdle: true,
        preciseAlarm: false,
      ),
    );
  }
}
