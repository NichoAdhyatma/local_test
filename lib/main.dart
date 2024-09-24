import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:period_notification/notification_controller.dart';
import 'package:period_notification/routes/app_routes.dart';
import 'package:period_notification/utils/notification_utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NotificationUtils().initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    NotificationUtils().setListener();

    NotificationUtils().checkPermission();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: MyApp.navigatorKey,
      getPages: appRoutes,
      initialRoute: '/',
    );
  }
}
