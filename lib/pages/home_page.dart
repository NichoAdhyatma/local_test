import 'dart:math';

import 'package:flutter/material.dart';
import 'package:period_notification/utils/notification_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationUtils().createNotification(
              id: Random().nextInt(10000),
              channelKey: 'basic_channel',
            );
          },
          child: const Text('Show Notification'),
        ),
      ),
    );
  }
}
