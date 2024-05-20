import 'package:flutter/material.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_list_view_display/widget/menu_list_card.dart';

class MenuListViewDisplay extends StatelessWidget {
  final List<FoodItem> products;
  final Function callBackFunc;

  const MenuListViewDisplay({
    super.key,
    required this.products,
    required this.callBackFunc,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.widthConstraints().maxWidth;

        if(products.isEmpty){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.no_food_rounded,
                  size: width > 600 ? 150 : 100,
                  color: const Color.fromARGB(124, 124, 124, 124),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Empty List",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(124, 124, 124, 124),
                  ),
                ),
              ],
            ),
          );
        }



        return GridView.count(
          crossAxisCount: width >= 600
              ? (width > 1200)
                  ? (width > 1600)
                      ? 4
                      : 3
                  : 2
              : 1,

          childAspectRatio: 2.8,
          children: List.generate(
            products.length,
            (index) => MenuListCard(
              product: products[index],
              productAddedEvent: (FoodItem product) {
                callBackFunc(context, product);
              },
            ),
          ),
        );
      },
    );
  }
}
