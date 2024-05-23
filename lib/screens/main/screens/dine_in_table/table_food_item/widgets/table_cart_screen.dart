import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_cart_item_display.dart';


class TableCartScreen extends StatefulWidget {
  const TableCartScreen({super.key});

  @override
  State<TableCartScreen> createState() => _TableCartScreenState();
}

class _TableCartScreenState extends State<TableCartScreen> {
  List<CartProductItem> _cartProductItems = [];
  double _total = 0;

  late final TableFoodSelectionCubit _tableFoodSelectionCubit;

  @override
  void initState() {
    _tableFoodSelectionCubit = context.read<TableFoodSelectionCubit>();
    _tableFoodSelectionCubit.getAllCartFoodItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.widthConstraints().maxWidth;

      return BlocBuilder<TableFoodSelectionCubit, TableFoodSelectionState>(
        buildWhen: (prev, cur) {
          if (cur is TableCartFoodItemDisplayState) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is TableCartFoodItemDisplayState) {
            _cartProductItems = state.cartProductItems;
            _total = state.total;
          }

          return getCartWidget(
            _cartProductItems,
            screenWidth,
            _total,
          );
        },
      );
    });
  }

  Widget getCartWidget(
    List<CartProductItem> cartProductItems,
    double screenWidth,
    double total,
  ) {
    if (cartProductItems.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.no_food,
              size: screenWidth <= 450
                  ? 50
                  : screenWidth <= 800
                      ? 100
                      : 150,
              color: Colors.black38,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Empty Cart",
              style: TextStyle(
                  fontSize: screenWidth <= 450
                      ? 12
                      : screenWidth <= 800
                          ? 14
                          : 16,
                  color: Colors.black38),
            )
          ],
        ),
      );
    } else {
      return TableCartItemDisplay(
        cartFoodItems: cartProductItems,
        screenWidth: screenWidth,
        total: total,
      );
    }
  }
}
