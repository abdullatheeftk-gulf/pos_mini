import 'package:flutter/material.dart';
import 'package:pos_mini/main.dart';
import 'package:pos_mini/models/food_item/food_item.dart';

class MenuGridCard extends StatelessWidget {
  final FoodItem product;
  final Function productAddedEvent;

  const MenuGridCard({
    super.key,
    required this.product,
    required this.productAddedEvent,
  });

  @override
  Widget build(BuildContext context) {
    final baseUrl = dio.options.baseUrl;
    return Card(
      elevation: 3,
      shape:
          RoundedRectangleBorder(side: BorderSide(color: Colors.grey.shade500)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              //"$baseUrl/downloadAnImage/${product.productImage}",
              "$baseUrl/static/${product.foodItemImage}",
              height: 100,
              errorBuilder: (context, exception, stackTrace) {
                return const Center(child: SizedBox(height:100,child: Center(child: Text('Error'))));
              },
            ),
            Text(
              product.foodItemName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              product.foodItemPrice.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: Material(
                child: Center(
                  child: Ink(
                    color: const Color.fromARGB(255, 236, 102, 56),
                    height: 100.0,
                    child: InkWell(
                      onTap: () {
                        productAddedEvent(product);
                      },
                      child: const Center(
                        child: Text('Add'),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
