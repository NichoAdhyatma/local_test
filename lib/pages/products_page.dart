import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';

class ProductsPage extends StatelessWidget {
  static const String routeName = '/products';

  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.put(ProductController());

    return GetBuilder<ProductController>(
      initState: (_) {
        controller.getAllProducts();
      },
      builder: (logic) {
        return Scaffold(
          body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            children: [
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Product 1'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Product 2'),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Product 3'),
                ),
              ),
              Container(
                color: Colors.yellow,
                child: const Center(
                  child: Text('Product 4'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
