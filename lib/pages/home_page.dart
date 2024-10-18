import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:period_notification/controller/payment_controller.dart';
import 'package:period_notification/models/payment_request.dart';
import 'package:period_notification/utils/notification_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PaymentController paymentController = Get.put(PaymentController());

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  paymentController.createPaymentSnap(PaymentRequest(
                    transactionDetails: TransactionDetails(
                      orderId: Random().nextInt(10000).toString(),
                      grossAmount: 100,
                    ),
                    itemDetails: [
                      ItemDetails(
                        id: '123',
                        price: 100,
                        quantity: 1,
                        name: 'Kaos',
                      ),
                    ],
                    customerDetails: CustomerDetails(
                      firstName: 'John',
                      lastName: 'Doe',
                      email: 'nicho@gmail.com',
                    ),
                  ));
                },
                child: const Text('Create Payment'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/products');
                },
                child: const Text('Products'),
              ),
              ElevatedButton(
                onPressed: () {
                  NotificationUtils().awesomeNotifications.cancelAll();
                },
                child: const Text('Show Notification'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
