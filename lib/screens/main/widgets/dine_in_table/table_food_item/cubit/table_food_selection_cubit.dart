import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/cubit/build_state/table_food_selection_build_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/cubit/listener_state/table_food_selection_listener_state.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/util/ProductView.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

part 'table_food_selection_state.dart';

class TableFoodSelectionCubit extends Cubit<TableFoodSelectionState> {
  // repositories
  final ApiRepository apiRepository;
  final SharedDataRepository sharedDataRepository;

  // constructor
  TableFoodSelectionCubit({
    required this.apiRepository,
    required this.sharedDataRepository,
  }) : super(TableFoodSelectionInitialState()) {
    sharedDataRepository.tableIdController.stream.listen((tableId) {
      printDebug(" tableId $tableId");
    });
    sharedDataRepository.nofChairSelectedController.stream
        .listen((noOfChairRequired) {
      printError("no of chairs required $noOfChairRequired");
    });
  }

  // Get all categories
  void getAllCategoriesAndTables() async {
    emit(const TableFoodSelectionBuildState(showProgressBar: true));

    final categories = await apiRepository.getAllCategories();

    if (categories is ApiError) {
      final errorMessage =
          "Error:- ${categories.errorData}, ${categories.errorMessage}";
      emit(TableFoodSelectionBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(TableFoodSelectionListenerState(errorMessage: errorMessage));
      return;
    }

    final clickedCategoryId = (categories as List<Category>).first.categoryId;

    emit(TableFoodSelectionBuildState(
        showProgressBar: false, categories: categories,));

    final products =
        await apiRepository.getProductByACategoryId(clickedCategoryId);

    if (products is ApiError) {
      final errorMessage =
          "Error:- ${products.errorData}, ${products.errorMessage}";
      emit(TableFoodSelectionBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(TableFoodSelectionListenerState(errorMessage: errorMessage));
      return;
    }

    emit(
      TableFoodSelectionBuildState(
        showProgressBar: false,
        foodItems: products,
      ),
    );

    //emit(TableFoodSelectionOnCategoryClickedState(categoryId: clickedCategoryId));
  }

  // event on category clicked
  void onCategoryClicked(int categoryId) async {
    emit( const TableFoodSelectionBuildState(showProgressBar: true));
    emit(TableFoodSelectionOnCategoryClickedState(categoryId: categoryId));

    final products = await apiRepository.getProductByACategoryId(categoryId);

    if (products is ApiError) {
      final errorMessage =
          "Error:- ${products.errorData}, ${products.errorMessage}";
      emit(TableFoodSelectionBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(TableFoodSelectionListenerState(errorMessage: errorMessage));
      return;
    }

    emit(
        TableFoodSelectionBuildState(showProgressBar: false, foodItems: products));
  }

  // Set Food item Display mode
  void setFoodItemSelectionMode(ProductView productView) {
    emit(TableFoodFoodItemViewSelectionState(productView: productView));
  }
}
