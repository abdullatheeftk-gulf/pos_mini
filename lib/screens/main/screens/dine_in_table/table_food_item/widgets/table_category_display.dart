import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/build_state/table_food_selection_build_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';


class TableCategoryDisplay extends StatelessWidget {
  const TableCategoryDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categories = [];
    int clickedCategory = 0;

    final TableFoodSelectionCubit tableFoodSelectionCubit =
        context.read<TableFoodSelectionCubit>();



    return BlocBuilder<TableFoodSelectionCubit, TableFoodSelectionState>(
      buildWhen: (prev, cur) {
        if (cur is TableFoodSelectionBuildState) {
          if (cur.categories!=null) {
            return true;
          }
          return false;
        }
        if (cur is TableFoodSelectionOnCategoryClickedState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is TableFoodSelectionBuildState) {
          if (state.categories != null) {

              categories = state.categories!;

              clickedCategory = categories.first.categoryId;

          }
        }
        if (state is TableFoodSelectionOnCategoryClickedState) {
          clickedCategory = state.categoryId;
        }

        return LayoutBuilder(builder: (context, constraints) {
          final screenWidth = constraints.widthConstraints().maxWidth;
          return Card(
            elevation: 10,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return RotatedBox(
                  quarterTurns: (screenWidth >= 120) ? 0 : 3,
                  child: screenWidth < 80
                      ? TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: (clickedCategory ==
                                    categories[index].categoryId)
                                ? const Color.fromARGB(255, 236, 102, 56)
                                : const Color.fromARGB(255, 0, 26, 51),
                          ),
                          onPressed: () {
                            tableFoodSelectionCubit.onCategoryClicked(
                                categories[index].categoryId);
                          },
                          child: Text(
                            categories[index].categoryName,
                            style: TextStyle(
                                fontSize: screenWidth >= 80 ? 16 : 14),
                          ),
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: (clickedCategory ==
                                          categories[index].categoryId)
                                      ? const Color.fromARGB(255, 236, 102, 56)
                                      : const Color.fromARGB(255, 0, 26, 51)),
                              onPressed: () {
                                tableFoodSelectionCubit.onCategoryClicked(
                                    categories[index].categoryId);
                              },
                              child: Text(
                                categories[index].categoryName,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: screenWidth >= 80 ? 16 : 14,
                                ),
                              ),
                            ),
                            if (index == categories.length - 1 &&
                                screenWidth >= 120)
                              const Divider(
                                color: Colors.brown,
                              )
                          ],
                        ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.brown,
                );
              },
              itemCount: categories.length,
            ),
          );
        });
      },
    );
  }
}
