import 'package:flutter/material.dart';
import 'package:pos_mini/main.dart';
import 'package:pos_mini/models/food_item/food_item.dart';

class MenuListCard extends StatelessWidget {
  final FoodItem product;
  final Function productAddedEvent;

  const MenuListCard({
    super.key,
    required this.product,
    required this.productAddedEvent,
  });

  @override
  Widget build(BuildContext context) {
    final baseUrl = dio.options.baseUrl;
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade500),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Image.network(
                  "$baseUrl/images/${product.foodItemImage}",
                  errorBuilder: (context, exception, stackTrace) {
                    return const Center(child: Text('Error'));
                  },
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product.foodItemName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      product.foodItemPrice.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    )
                  ],
                ),
              ),
              Material(
                color: Colors.teal[900],
                child: Center(
                  child: Ink(
                    color: const Color.fromARGB(255, 119, 236, 56),
                    width: 100.0,
                    // height: 100.0,
                    child: InkWell(
                        onTap: () {
                          productAddedEvent(product);
                        },
                        child: const Center(
                          child: Text('Add'),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
