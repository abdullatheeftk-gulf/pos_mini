import 'package:flutter/material.dart';
import 'package:pos_mini/models/product/product.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_grid_view_display/widget/menu_grid_card.dart';

class MenuGridViewDisplay extends StatelessWidget {
  final List<Product> products;
  final Function callBackFunc;

  const MenuGridViewDisplay({
    super.key,
    required this.products,
    required this.callBackFunc,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.widthConstraints().maxWidth;

      return GridView.count(
        crossAxisCount: width >= 550
            ? (width > 900)
                ? (width > 1200)
                    ? (width > 1600)
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
            productAddedEvent: (Product product) {
              /*_showProductAddDialog(context, product);*/
              callBackFunc(context, product);
            },
          ),
        ),
      );
    });
  }
}