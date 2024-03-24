import 'dart:async';

import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/util/ProductView.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'take_away_event.dart';

part 'take_away_state.dart';

class TakeAwayBloc extends Bloc<TakeAwayEvent, TakeAwayState> {
  final ApiRepository apiRepository;

  List<Category> _categories = [];

  final List<CartProductItem> _cartProductItems = [];

  double _total = 0.0;

  TakeAwayBloc({required this.apiRepository}) : super(TakeAwayInitialState()) {
    on<TakeAwayGetAllCategoriesEvent>(_takeAwayGetAllCategoriesEvent);

    on<TakeAwayOnCategoryClickedEvent>(_takeAwayOnCategoryClickedEvent);

    on<TakeAwayOnMenuModeSelectedEvent>(_takeAwayOnMenuModeSelectedEvent);

    on<TakeAwayOnProductSearchButtonClickedEvent>(
        _takeAwayOnProductSearchButtonClickedEvent);

    on<TakeAwayOnProductAddedToCartEvent>(_takeAwayOnProductAddedToCartEvent);

    on<TakeAwayShowCartProductItemsEvent>(_takeAwayShowCartProductItemsEvent);

    on<TakeAwayRemoveOneItemFromTheCartProductItemListEvent>(
        _takeAwayRemoveOneItemFromTheCartProductItemListEvent);

    on<TakeAwayEditQuantityOfAProductEvent>(
        _takeAwayEditQuantityOfAProductEvent);
  }

  FutureOr<void> _takeAwayGetAllCategoriesEvent(
      TakeAwayGetAllCategoriesEvent event, Emitter<TakeAwayState> emit) async {
    //print("categories:-  $_categories");
    emit(TakeAwayScreenShowCircularProgressIndicatorState());
    emit(TakeAwayGetAllCategoriesSuccessState(categories: _categories));

    final result = await apiRepository.getAllCategories();

    if (result is ApiError) {
      emit(TakeAwayApiFetchingFailedState(apiError: result));
      emit(TakeAwayGetAllCategoriesFailedState(apiError: result));
      return;
    }

    _categories = result;

    emit(TakeAwayGetAllCategoriesSuccessState(categories: _categories));
  }

  FutureOr<void> _takeAwayOnCategoryClickedEvent(
      TakeAwayOnCategoryClickedEvent event, Emitter<TakeAwayState> emit) async {
    final categoryId = event.categoryId;
    emit(TakeAwayOnCategoryClickedState(categoryId: categoryId));
    //emit(TakeAwayGetProductByCategorySuccessState(products: const []));

    emit(TakeAwayScreenShowCircularProgressIndicatorState());

    final result = await apiRepository.getProductByACategoryId(categoryId);

    if (result is ApiError) {
      emit(TakeAwayApiFetchingFailedState(apiError: result));
      emit(TakeAwayGetProductByCategoryFailedState(apiError: result));
      return;
    }
    final products = result as List<FoodItem>;
    if (products.isEmpty) {
      emit(TakeAwayEmptyProductListState());
      return;
    }
    emit(TakeAwayGetProductByCategorySuccessState(products: result));
  }

  FutureOr<void> _takeAwayOnMenuModeSelectedEvent(
      TakeAwayOnMenuModeSelectedEvent event, Emitter<TakeAwayState> emit) {
    final productView = event.productView;
    emit(TakeAwayOnMenuModeSelectedState(productView: productView));
  }

  Future<void> _takeAwayOnProductSearchButtonClickedEvent(
      TakeAwayOnProductSearchButtonClickedEvent event,
      Emitter<TakeAwayState> emit) async {
    emit(TakeAwayOnCategoryClickedState(categoryId: -1));
    emit(TakeAwayScreenShowCircularProgressIndicatorState());
    final searchText = event.searchText;

    final result = await apiRepository.searchProduct(searchText);

    if (result is ApiError) {
      emit(TakeAwayApiFetchingFailedState(apiError: result));
      emit(TakeAwayGetProductByCategoryFailedState(apiError: result));
      return;
    }
    final products = result as List<FoodItem>;
    if (products.isEmpty) {
      emit(TakeAwayEmptyProductListState());
      return;
    }
    emit(TakeAwayGetProductByCategorySuccessState(products: result));
  }

  FutureOr<void> _takeAwayOnProductAddedToCartEvent(
      TakeAwayOnProductAddedToCartEvent event, Emitter<TakeAwayState> emit) {
    final product = event.product;
    final qty = event.qty;
    final note = event.note;

    final cartProductItem = CartProductItem(
        qty: qty,
        note: note,
        cartProductName: product.foodItemName,
        cartProductLocalName: product.foodItemLocalName,
        product: product);

    final price = qty * product.foodItemPrice;
    _total += price;
    _cartProductItems.add(cartProductItem);

    emit(TakeAwayShowBadgeCountState(count: _cartProductItems.length));
  }

  FutureOr<void> _takeAwayShowCartProductItemsEvent(
      TakeAwayShowCartProductItemsEvent event, Emitter<TakeAwayState> emit) {
    emit(TakeAwayShowCartProductItemsState(
        cartProductItems: _cartProductItems, total: _total));
  }

  FutureOr<void> _takeAwayRemoveOneItemFromTheCartProductItemListEvent(
      TakeAwayRemoveOneItemFromTheCartProductItemListEvent event,
      Emitter<TakeAwayState> emit) {
    final index = event.index;
    final price = event.price;

    _cartProductItems.removeAt(index);

    _total -= price;
    // To update badge
    emit(TakeAwayShowBadgeCountState(count: _cartProductItems.length));

    // To update food_item list
    emit(TakeAwayShowCartProductItemsState(
        cartProductItems: _cartProductItems, total: _total));
  }

  FutureOr<void> _takeAwayEditQuantityOfAProductEvent(
      TakeAwayEditQuantityOfAProductEvent event, Emitter<TakeAwayState> emit) {
    final index = event.index;
    final qty = event.qty;
    final amount = event.amount;
    final unitPrice = event.unitPrice;

    var i = 0;

    final newList = _cartProductItems.map((element) {
      if (i == index) {
        i++;
        return element.copyWith(qty: qty);
      } else {
        i++;
        return element;
      }
    }).toList();

    _cartProductItems.clear();
    _cartProductItems.addAll(newList);

    _total = _total - amount;

    _total += (qty * unitPrice);

    emit(TakeAwayShowCartProductItemsState(
        cartProductItems: _cartProductItems, total: _total));
  }
}
