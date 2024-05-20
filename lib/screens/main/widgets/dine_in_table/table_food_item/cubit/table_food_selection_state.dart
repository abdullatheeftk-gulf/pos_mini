part of 'table_food_selection_cubit.dart';


class TableFoodSelectionState {}

final class TableFoodSelectionInitialState extends TableFoodSelectionState{}

final class TableFoodSelectionOnCategoryClickedState extends TableFoodSelectionState{
  final int categoryId;

  TableFoodSelectionOnCategoryClickedState({required this.categoryId});

}

final class TableFoodFoodItemViewSelectionState extends TableFoodSelectionState{
  final ProductView productView;

  TableFoodFoodItemViewSelectionState({required this.productView});
}
