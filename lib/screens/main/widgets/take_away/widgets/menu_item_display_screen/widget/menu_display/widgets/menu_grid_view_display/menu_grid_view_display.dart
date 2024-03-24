import 'package:flutter/material.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_grid_view_display/widget/menu_grid_card.dart';

class MenuGridViewDisplay extends StatelessWidget {
  final List<FoodItem> products;
  final Function callBackFunc;

  const MenuGridViewDisplay({
    super.key,
    required this.products,
    required this.callBackFunc,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.widthConstraints().maxWidth;

      return
        GridView.count(
        crossAxisCount: screenWidth >= 600
            ? (screenWidth > 900)
                ? (screenWidth > 1200)
                    ? (screenWidth > 1600)
                        ? 7
                        : 6
                    : 5
                : 4
            : 2,
        childAspectRatio: 0.8,
        children: List.generate(
          products.length,
          (index) => MenuGridCard(
            product: products[index],
            productAddedEvent: (FoodItem product) {
              /*_showProductAddDialog(context, food_item);*/
              callBackFunc(context, product);
            },
          ),
        ),
      );
    });
  }
}
