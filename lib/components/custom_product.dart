import 'package:flutter/material.dart';
import 'package:meta_fit_app/components/constants.dart';
import 'package:meta_fit_app/features/services/models/product_model.dart';
import 'package:meta_fit_app/features/services/presentation/pages/card_view.dart';
import 'package:meta_fit_app/features/services/presentation/pages/products_info_view.dart';

// ignore: must_be_immutable
class CustomProduct extends StatelessWidget {
  CustomProduct({
    required this.product,
    Key? key,
  }) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0.0, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 12,
                  child: Text(
                    product.name[0],
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                const Spacer(flex: 5),
              ],
            ),
            const Spacer(flex: 2),
            Image.asset(
              product.pictureUrl,
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width * .6,
              fit: BoxFit.cover,
            ),
            const Spacer(flex: 1),
            Text(
              product.price.toString(),
              style: const TextStyle(
                fontSize: 20,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 1),
            Text(
              product.brand,
              style: const TextStyle(
                fontSize: 20,
                color: unActiveColor,
              ),
            ),
            const Spacer(flex: 1),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardView(),
                    ));
              },
              child: const Text(
                'ADD TO CARD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductInfoView(product: product),
                    ));
              },
              child: const Text(
                'VIEW PRODUCT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
