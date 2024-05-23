import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/build_state/table_food_selection_build_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/listener_state/table_food_selection_listener_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_add_a_product_dialog.dart';
import 'package:pos_mini/screens/main/screens/take_away/widgets/menu_item_display_screen/widget/menu_display/util/ProductView.dart';
import 'package:pos_mini/screens/main/screens/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_grid_view_display/menu_grid_view_display.dart';
import 'package:pos_mini/screens/main/screens/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_list_view_display/menu_list_view_display.dart';

class TableFoodItemDisplay extends StatelessWidget {
  const TableFoodItemDisplay({super.key});

  void _showFoodAddDialog(BuildContext context, FoodItem foodItem) {
    showDialog(
        context: context,
        builder: (context) {
          return TableAddAProductDialog(foodItem: foodItem);
        });
  }

  @override
  Widget build(BuildContext context) {
    bool showProgressbar = false;

    // Food item display mode
    ProductView foodDisplayMode = ProductView.list;

    // Error message
    String? errorMessage;

    // Food item list
    List<FoodItem>? foodItems;

    // cubit
    TableFoodSelectionCubit tableFoodSelectionCubit =
        context.read<TableFoodSelectionCubit>();

    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.widthConstraints().maxWidth;

      return BlocConsumer<TableFoodSelectionCubit, TableFoodSelectionState>(
        listener: (context, state) {
          if (state is TableFoodSelectionListenerState) {
            final message = state.errorMessage;

            if (message != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                  duration: const Duration(seconds: 5),
                ),
              );
            }

            if (state.navigate != null) {
              // Todo
            }
            if (state.tableFoodAddDialog != null) {
              final foodItem = state.tableFoodAddDialog!.foodItem!;
              _showFoodAddDialog(context, foodItem);
            }
          }
        },
        listenWhen: (prev, cur) {
          if (cur is TableFoodSelectionListenerState) {
            return true;
          }
          return false;
        },
        buildWhen: (prev, cur) {
          if (cur is TableFoodSelectionBuildState) {
            return true;
          }
          if (cur is TableFoodFoodItemViewSelectionState) {
            return true;
          }
          return false;
        },
        builder: (context, state) {
          if (state is TableFoodSelectionBuildState) {
            showProgressbar = state.showProgressBar;
            errorMessage = state.errorMessage;

            if (state.foodItems != null) {
              foodItems = state.foodItems;
            }
          }

          if (state is TableFoodFoodItemViewSelectionState) {
            foodDisplayMode = state.productView;
          }

          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Menu mode selection widget
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Set List view
                            context
                                .read<TableFoodSelectionCubit>()
                                .setFoodItemSelectionMode(ProductView.list);
                          },
                          icon: const Icon(Icons.list),
                          constraints: const BoxConstraints(),
                        ),
                        IconButton(
                          onPressed: () {
                            // Set Grid view
                            context
                                .read<TableFoodSelectionCubit>()
                                .setFoodItemSelectionMode(ProductView.grid);
                          },
                          icon: const Icon(Icons.grid_view),
                          constraints: const BoxConstraints(),
                        ),
                      ],
                    ),
                  ),

                  // Error message
                  if (errorMessage != null)
                    Text(
                      errorMessage!,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),

                  // Food item display
                  (foodItems == null || showProgressbar)
                      ? const SizedBox()
                      : Expanded(
                          child: foodDisplayMode == ProductView.list
                              ?

                              // List view Display
                              MenuListViewDisplay(
                                  products: foodItems!,
                                  callBackFunc: (context, foodItem) {
                                    tableFoodSelectionCubit
                                        .showAddDialog(foodItem);
                                  },
                                )
                              :

                              // Grid view Display
                              MenuGridViewDisplay(
                                  products: foodItems!,
                                  callBackFunc: (context, foodItem) {
                                    tableFoodSelectionCubit
                                        .showAddDialog(foodItem);
                                  },
                                ),
                        ),
                ],
              ),

              // Showing loading widget
              if (foodItems == null && showProgressbar)
                const Align(
                  alignment: Alignment.center,
                  child: Text("Loading..."),
                ),

              // Circular progress Indicator
              showProgressbar
                  ? const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : const SizedBox(),

              // End
            ],
          );
        },
      );
    });
  }
}
