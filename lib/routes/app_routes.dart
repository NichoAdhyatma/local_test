import 'package:get/get.dart';
import 'package:period_notification/pages/home_page.dart';

final appRoutes = [
  GetPage(
    name: '/',
    page: () => const HomePage(),
    title: 'Awesome Notifications - Example App',
  ),
];
