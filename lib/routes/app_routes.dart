import 'package:get/get.dart';
import 'package:period_notification/pages/home_page.dart';
import 'package:period_notification/pages/payment_webview.dart';
import 'package:period_notification/pages/products_page.dart';
import 'package:period_notification/pages/success_payment.dart';

final appRoutes = [
  GetPage(
    name: '/',
    page: () => const HomePage(),
    title: 'Awesome Notifications - Example App',
  ),
  GetPage(
    name: PaymentWebview.routeName,
    page: () => const PaymentWebview(),
    title: 'Payment View',
  ),
  GetPage(
    name: SuccessPaymentPage.routeName,
    page: () => const SuccessPaymentPage(),
  ),
  GetPage(
    name: ProductsPage.routeName,
    page: () => const ProductsPage(),
  ),
];
