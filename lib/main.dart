import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:midtrans_client_flutter/models/request/transaction_request.dart';
import 'package:midtrans_client_flutter/remote/midtrans_client_remote.dart';
import 'package:period_notification/routes/app_routes.dart';
import 'package:period_notification/utils/notification_utils.dart';
import 'package:midtrans_client_flutter/midtrans_client_flutter.dart';


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
