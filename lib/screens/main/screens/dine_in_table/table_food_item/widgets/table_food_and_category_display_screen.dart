import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_category_display.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_food_item_display.dart';
import 'package:pos_mini/screens/main/screens/take_away/widgets/menu_item_display_screen/widget/search_product_widget/search_product_widget.dart';
import 'package:pos_mini/util/color_constants.dart';

class TableFoodAndCategoryDisplayScreen extends StatefulWidget {
  const TableFoodAndCategoryDisplayScreen({super.key});

  @override
  State<TableFoodAndCategoryDisplayScreen> createState() =>
      _TableFoodAndCategoryDisplayScreenState();
}

class _TableFoodAndCategoryDisplayScreenState
    extends State<TableFoodAndCategoryDisplayScreen> {
  late final TableFoodSelectionCubit _tableFoodSelectionCubit;

  @override
  void initState() {
    _tableFoodSelectionCubit = context.read<TableFoodSelectionCubit>();
    _tableFoodSelectionCubit.getAllCategoriesAndTables();
    super.initState();
  }

  void _showSearchDialog(BuildContext context, double screenWidth) {
    showDialog(
      context: context,
      builder: (context) {
        return SearchProductWidget(
          screenWidth: screenWidth,
          onSearchButtonClicked: (searchText) {
            // search text
            context.read<TableFoodSelectionCubit>().searchFoodItem(searchText);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.widthConstraints().maxWidth;
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            tooltip: "Search Food item",
            foregroundColor: Colors.white,
            backgroundColor: deepBlueColour,
            onPressed: () {
              _showSearchDialog(context, screenWidth);
            },
            child: const Icon(Icons.search),
          ),
          body: Row(
            children: [

              // Category section
              SizedBox(
                width: screenWidth > 800
                    ? (screenWidth > 1200)
                        ? (screenWidth > 1600)
                            ? 160
                            : 120
                        : 80
                    : 40,
                child: const TableCategoryDisplay(),
              ),

              // Food section
              const Expanded(
                child: TableFoodItemDisplay(),
              )
            ],
          ),
        );
      },
    );
  }
}
