import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';
import 'package:pos_mini/util/pair.dart';

part 'add_event.dart';

part 'add_state.dart';

class AddBloc extends Bloc<AddEvent, AddState> {
  final ApiRepository apiRepository;

  final List<Category> _selectedCategories = [];

  final List<Pair<int, String>> _listOfSelectedCategories = [];

  Category? categoryToProductAdd;

  AddBloc({required this.apiRepository}) : super(AddInitialState()) {
    on<AddGetAllCategoriesEvent>(_addGetAllCategoriesEvent);

    on<AddAddACategoryEvent>(_addAddACategoryEvent);

    on<AddEditACategoryEvent>(_addEditACategoryEvent);

    on<AddDeleteACategoryEvent>(_addDeleteACategoryEvent);

    on<AddGetAllCategoriesForProductAddEvent>(
        _addGetAllCategoriesForProductAddEvent);

    on<AddOnAddCategorySelectedForAProductEvent>(
        _addOnAddCategorySelectedForAProductEvent);

    on<AddOnCategoriesSelectedForProductEvent>(
        _addOnCategoriesSelectedForProductEvent);

    on<AddClearSelectedCategoriesForProductEvent>(
        _addClearSelectedCategoriesForProductEvent);

    on<AddRemoveOneItemFromTheSelectedCategoriesForProductEvent>(
        _addRemoveOneItemFromTheSelectedCategoriesForProductEvent);

    on<AddTranslateTextEvent>(_addTranslateTextEvent);
    on<AddTransliterateEvent>(_addTransliterateEvent);

    on<AddProductAddEvent>(_addProductAddEvent);

    on<AddSearchProductEvent>(_addSearchProductEvent);

    on<AddProductCategoryClickedEvent>(_addProductCategoryClickedEvent);

    on<AddProductGetAllCategoriesEvent>(_addProductGetAllCategoriesEvent);

    on<AddNavigateToAddProductScreenEvent>(_addNavigateToAddProductScreenEvent);

    on<DeleteAProductEvent>(_deleteAProductEvent);
  }

  FutureOr<void> _addAddACategoryEvent(
      AddAddACategoryEvent event, Emitter<AddState> emit) async {
    emit(AddShowCategoryAddShowProgressBarState());

    final category = event.category;

    final result = await apiRepository.addACategory(category);

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddCategoryAddEditDeleteFailedState(apiError: result));
      return;
    }

    emit(AddCategoryAddSuccessState(id: result));

    final categories = await apiRepository.getAllCategories();
    if (categories is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddCategoryAddEditDeleteFailedState(apiError: result));
      return;
    }

    emit(AddGetAllCategoriesState(categories: categories));
  }

  FutureOr<void> _addGetAllCategoriesEvent(
      AddGetAllCategoriesEvent event, Emitter<AddState> emit) async {
    emit(AddShowCategoryAddShowProgressBarState());

    final categories = await apiRepository.getAllCategories();

    if (categories is ApiError) {
      emit(AddApiFetchingFailedState(apiError: categories));
      emit(AddCategoryAddEditDeleteFailedState(apiError: categories));
      return;
    }

    emit(AddGetAllCategoriesState(categories: categories));

    //final res = await apiRepository.googleTranslate("Apple juice");
  }

  FutureOr<void> _addEditACategoryEvent(
      AddEditACategoryEvent event, Emitter<AddState> emit) async {
    emit(AddShowCategoryAddShowProgressBarState());

    final category = event.category;

    final result = await apiRepository.updateACategory(category);

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddCategoryAddEditDeleteFailedState(apiError: result));
      return;
    }

    emit(AddEditAndDeleteCategorySuccessState(result: result));

    final categories = await apiRepository.getAllCategories();
    if (categories is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddCategoryAddEditDeleteFailedState(apiError: result));
      return;
    }

    emit(AddGetAllCategoriesState(categories: categories));
  }

  FutureOr<void> _addDeleteACategoryEvent(
      AddDeleteACategoryEvent event, Emitter<AddState> emit) async {
    emit(AddShowCategoryAddShowProgressBarState());

    final category = event.category;

    final result = await apiRepository.deleteACategory(category.categoryId);

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddCategoryAddEditDeleteFailedState(apiError: result));
      return;
    }

    emit(AddEditAndDeleteCategorySuccessState(result: result));

    final categories = await apiRepository.getAllCategories();
    if (categories is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddCategoryAddEditDeleteFailedState(apiError: result));
      return;
    }

    emit(AddGetAllCategoriesState(categories: categories));
  }

  FutureOr<void> _addOnAddCategorySelectedForAProductEvent(
      AddOnAddCategorySelectedForAProductEvent event, Emitter<AddState> emit) {
    final category = event.category;

    _selectedCategories.add(category);

    emit(
        AddOnCategorySelectedForAProductState(categories: _selectedCategories));
  }

  FutureOr<void> _addGetAllCategoriesForProductAddEvent(
      AddGetAllCategoriesForProductAddEvent event,
      Emitter<AddState> emit) async {
    emit(AddShowCircularProgressIndicatorState());

    final result = await apiRepository.getAllCategories();

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductFailedUiState(apiError: result));
      return;
    }

    emit(AddGetAllCategoriesForProductAddSuccessState(categories: result));
  }

  FutureOr<void> _addOnCategoriesSelectedForProductEvent(
      AddOnCategoriesSelectedForProductEvent event, Emitter<AddState> emit) async {
    final category = event.category;
    final isCategoryClicked = event.isCategoryClicked;



    final pair =
        Pair(first: category.categoryId, second: category.categoryName);
    if (isCategoryClicked) {
      _listOfSelectedCategories.add(pair);
    } else {
      _listOfSelectedCategories
          .removeWhere((element) => element.first == category.categoryId);
    }



    emit(AddOnCategoriesSelectedForProductState(
        listOfSelectedCategories: _listOfSelectedCategories));
  }

  FutureOr<void> _addClearSelectedCategoriesForProductEvent(
      AddClearSelectedCategoriesForProductEvent event, Emitter<AddState> emit) {
    _listOfSelectedCategories.clear();
    emit(AddOnCategoriesSelectedForProductState(
        listOfSelectedCategories: _listOfSelectedCategories));
  }

  FutureOr<void> _addRemoveOneItemFromTheSelectedCategoriesForProductEvent(
      AddRemoveOneItemFromTheSelectedCategoriesForProductEvent event,
      Emitter<AddState> emit) {
    _listOfSelectedCategories
        .removeWhere((element) => element.first == event.categoryId);
    emit(AddOnCategoriesSelectedForProductState(
        listOfSelectedCategories: _listOfSelectedCategories));
  }

  FutureOr<void> _addTranslateTextEvent(
      AddTranslateTextEvent event, Emitter<AddState> emit) async {
    emit(AddShowCircularProgressIndicatorState());

    final result = await apiRepository.googleTranslate(event.text);

    if (result is ApiError) {
      printError("result is $result");
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductFailedUiState(apiError: result));
      return;
    }

    printDebug("No error $result");

    emit(AddTranslateSuccessState(text: result));
  }

  FutureOr<void> _addTransliterateEvent(
      AddTransliterateEvent event, Emitter<AddState> emit) async {
    emit(AddShowCircularProgressIndicatorState());

    final result = await apiRepository.transliterate(event.text);

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductFailedUiState(apiError: result));
      return;
    }

    emit(AddTransliterateSuccessState(text: result));
  }

  FutureOr<void> _addProductAddEvent(
      AddProductAddEvent event, Emitter<AddState> emit) async {
    emit(AddShowCircularProgressIndicatorState());

    final product = event.product;
    final file = event.file;

    final result = await apiRepository.addAProduct(product);

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductFailedUiState(apiError: result));
      return;
    }

    if (file != null) {
      final imageResult = await apiRepository.updateProductPhoto(result, file);
      if (imageResult is ApiError) {
        emit(AddApiFetchingFailedState(apiError: imageResult));
        emit(AddProductFailedUiState(apiError: imageResult));
        return;
      }

      emit(AddProductImageAddSuccessState(message: imageResult));
      await Future.delayed(const Duration(milliseconds: 100));
      emit(AddProductAddSuccessState(result: result));

      return;
    }

    emit(AddProductAddSuccessState(result: result));
  }

  FutureOr<void> _addSearchProductEvent(
      AddSearchProductEvent event, Emitter<AddState> emit) async {
    emit(AddProductCategoryClickedState(categoryId: -1));
    final searchText = event.search;
    emit(AddProductEditOrDeleteCircularProgressIndicatorState());

    final result = await apiRepository.searchProduct(searchText);

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductEditOrDeleteFailedState(apiError: result));
      return;
    }

    emit(AddProductGetProductForCategoriesState(products: result,categoryId: -1));
  }

  FutureOr<void> _addProductCategoryClickedEvent(
      AddProductCategoryClickedEvent event, Emitter<AddState> emit) async {
    final categoryId = event.categoryId;

    categoryToProductAdd = event.category;
    if(categoryId==1 && categoryToProductAdd==null){
      final result = await apiRepository.getACategoryById(1);
      if(result is Category){
        categoryToProductAdd = result;
      }/*else{
        //print(result);
      }*/
    }

    emit(AddProductCategoryClickedState(categoryId: categoryId));

    final result = await apiRepository.getProductByACategoryId(categoryId);

    if(result is ApiError){
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductEditOrDeleteFailedState(apiError: result));
      return;
    }

    emit(AddProductGetProductForCategoriesState(products: result,categoryId: categoryId));
  }

  FutureOr<void> _addProductGetAllCategoriesEvent(
      AddProductGetAllCategoriesEvent event, Emitter<AddState> emit) async {
    emit(AddProductEditOrDeleteCircularProgressIndicatorState());
    final result = await apiRepository.getAllCategories();

    if (result is ApiError) {
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductEditOrDeleteFailedState(apiError: result));
      return;
    }

    emit(AddProductGetAllCategoriesSuccessState(categories: result));
  }

  FutureOr<void> _addNavigateToAddProductScreenEvent(AddNavigateToAddProductScreenEvent event, Emitter<AddState> emit) {
    emit(AddNavigateToAddProductScreenState(category: categoryToProductAdd));
  }

  FutureOr<void> _deleteAProductEvent(DeleteAProductEvent event, Emitter<AddState> emit) async{
    emit(AddProductEditOrDeleteCircularProgressIndicatorState());

    final productId = event.productId;
    final categoryId = event.categoryId;

    final result = await apiRepository.deleteAProduct(productId);

    if(result is ApiError){
      emit(AddApiFetchingFailedState(apiError: result));
      emit(AddProductEditOrDeleteFailedState(apiError: result));
      return;
    }

    if(categoryId!=-1){
      final products = await apiRepository.getProductByACategoryId(categoryId);
      if(products is ApiError){
        emit(AddApiFetchingFailedState(apiError: result));
        emit(AddProductEditOrDeleteFailedState(apiError: result));
        return;
      }
      emit(AddProductGetProductForCategoriesState(categoryId: categoryId,products: products));
    }


  }
}
