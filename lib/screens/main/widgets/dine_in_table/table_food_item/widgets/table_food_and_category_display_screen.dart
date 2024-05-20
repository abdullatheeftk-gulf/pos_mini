import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/widgets/table_category_display.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/widgets/table_food_item_display.dart';

class TableFoodAndCategoryDisplayScreen extends StatefulWidget {
  const TableFoodAndCategoryDisplayScreen({super.key});

  @override
  State<TableFoodAndCategoryDisplayScreen> createState() => _TableFoodAndCategoryDisplayScreenState();
}

class _TableFoodAndCategoryDisplayScreenState extends State<TableFoodAndCategoryDisplayScreen> {

  late final TableFoodSelectionCubit _tableFoodSelectionCubit;

  @override
  void initState() {
    _tableFoodSelectionCubit = context.read<TableFoodSelectionCubit>();
    _tableFoodSelectionCubit.getAllCategoriesAndTables();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.widthConstraints().maxWidth;
      return Row(
        children: [
          SizedBox(
            width: screenWidth > 800
                ? (screenWidth > 1200)
                    ? (screenWidth > 1600)
                        ? 160
                        : 120
                    : 80
                : 40,
                child: const TableCategoryDisplay()
          ),
          const Expanded(child: TableFoodItemDisplay())
        ],
      );
    });
  }
}
