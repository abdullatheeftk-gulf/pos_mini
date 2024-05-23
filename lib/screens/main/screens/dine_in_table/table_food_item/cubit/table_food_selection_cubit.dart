import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/build_state/table_food_selection_build_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/listener_state/table_food_selection_listener_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/model/table_food_add_dialog.dart';
import 'package:pos_mini/screens/main/screens/take_away/widgets/menu_item_display_screen/widget/menu_display/util/ProductView.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

part 'table_food_selection_state.dart';

class TableFoodSelectionCubit extends Cubit<TableFoodSelectionState> {
  // repositories
  final ApiRepository apiRepository;

  List<CartProductItem> _cartFoodItems = [];
  double _totalAmount = 0;

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
      //printError("no of chairs required $noOfChairRequired");
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
      showProgressBar: false,
      categories: categories,
    ));

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
    emit(const TableFoodSelectionBuildState(showProgressBar: true));
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

    emit(TableFoodSelectionBuildState(
        showProgressBar: false, foodItems: products));
  }

  // Set Food item Display mode
  void setFoodItemSelectionMode(ProductView productView) {
    emit(TableFoodFoodItemViewSelectionState(productView: productView));
  }

  // search food item
  void searchFoodItem(String searchText) async {
    emit(const TableFoodSelectionBuildState(showProgressBar: true));

    final result = await apiRepository.searchProduct(searchText);

    if (result is ApiError) {
      final errorMessage = "Error:- ${result.errorData}";
      emit(TableFoodSelectionBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(TableFoodSelectionListenerState(errorMessage: errorMessage));
      return;
    }

    emit(TableFoodSelectionBuildState(
        showProgressBar: false, foodItems: result));
    emit(TableFoodSelectionOnCategoryClickedState(categoryId: -1));
  }

  // To show Add Food Item To cart dialog
  void showAddDialog(FoodItem foodItem) {
    emit(const TableFoodSelectionBuildState(showProgressBar: false));
    emit(
      TableFoodSelectionListenerState(
        tableFoodAddDialog: TableFoodAddDialog(foodItem: foodItem),
      ),
    );
  }

  // Add food items to cart
  void addFoodItemsToCart({
    required FoodItem foodItem,
    required double qty,
    required String? note,
  }) {
    _totalAmount = _totalAmount + (qty * foodItem.foodItemPrice);

    _cartFoodItems.add(
      CartProductItem(
        qty: qty,
        cartProductName: foodItem.foodItemName,
        cartProductLocalName: foodItem.foodItemLocalName,
        product: foodItem,
        note: note,
      ),
    );
    emit(TableCartFoodItemCounterState(count: _cartFoodItems.length));
  }

  // reset cart list
  void resetCartList() {
    printDebug(" cleared resetCartList");
    _cartFoodItems.clear();
    _totalAmount = 0.0;
    emit(TableCartFoodItemCounterState(count: _cartFoodItems.length));
  }

  // display cart food items
  void getAllCartFoodItems() {
    emit(TableCartFoodItemDisplayState(
        cartProductItems: _cartFoodItems, total: _totalAmount));
  }

  // Update Cart Food
  void updateCartFoodItemsList({
    required int index,
    String? note,
    required double qty,
  }) {
    int iterator = 0;
    final newList = _cartFoodItems.map((cartFoodItem) {
      if (iterator == index) {
        _totalAmount = _totalAmount -
            cartFoodItem.qty * cartFoodItem.product!.foodItemPrice;
        _totalAmount += qty * cartFoodItem.product!.foodItemPrice;
        return CartProductItem(
          qty: qty,
          cartProductName: cartFoodItem.cartProductName,
          cartProductLocalName: cartFoodItem.cartProductLocalName,
          note: note,
          product: cartFoodItem.product,
        );
      }
      return cartFoodItem;
    }).toList();

    _cartFoodItems = newList;

    emit(TableCartFoodItemDisplayState(
        cartProductItems: _cartFoodItems, total: _totalAmount));
  }

  // Delete cart food
  void deleteCartFoodItem({
    required int index,
  }) {
    final removedCartFoodItem = _cartFoodItems.removeAt(index);
    _totalAmount -=
        removedCartFoodItem.qty * removedCartFoodItem.product!.foodItemPrice;

    emit(TableCartFoodItemDisplayState(
        cartProductItems: _cartFoodItems, total: _totalAmount));
    emit(TableCartFoodItemCounterState(count: _cartFoodItems.length));
  }

  // To generate kot
  void generateKot() {

  }
}
