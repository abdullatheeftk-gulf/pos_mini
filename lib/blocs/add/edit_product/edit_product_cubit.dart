import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';
import 'package:pos_mini/util/pair.dart';

part 'edit_product_state.dart';

class EditProductCubit extends Cubit<EditProductState> {
  final ApiRepository apiRepository;

  EditProductCubit({required this.apiRepository}) : super(EditProductInitial());

  void getAProductPhotoByteArray(String productImage) async {
    emit(EditProductShowCircularProgressIndicatorState());

    final result = await apiRepository.getProductImageAsByteArray(productImage);

    if (result is ApiError) {
      emit(EditProductApiFetchingFailedState(apiError: result));
      emit(EditProductScreenErrorState(apiError: result));
      return;
    }

    printError(productImage);

    emit(EditProductProductImageSuccessState(imageByteArray: result,fileName: productImage));
  }

  void removeProductImage() {
    emit(EditProductRemoveImageState());
  }

  void pickImageFromLocalStorage() async {
    try {
      final FilePickerResult? result = await FilePicker.platform
          .pickFiles(type: FileType.image, allowMultiple: false);

      if (result != null) {
        final PlatformFile pickedFile = result.files.first;
        final File fileToDisplay = File(pickedFile.path.toString());

        String fileName = result.files.first.name;

        final imageByteArray = await fileToDisplay.readAsBytes();
        emit(EditProductProductImageSuccessState(
          imageByteArray: imageByteArray,
          fileName: fileName,
        ));



      } else {
        const apiError = ApiError(
          errorCode: 600,
          errorMessage: "File picker error",
          errorData: "There have some problem when picking image",
        );
        emit(EditProductScreenErrorState(apiError: apiError));
      }
    } catch (e) {
      const apiError = ApiError(
        errorCode: 600,
        errorMessage: "File picker error",
        errorData: "There have some problem when picking image",
      );
      emit(EditProductScreenErrorState(apiError: apiError));
      printError(e.toString());
    }
  }

  void translate(String text) async {
    emit(EditProductShowCircularProgressIndicatorState());

    final result = await apiRepository.googleTranslate(text);

    if (result is ApiError) {
      emit(EditProductApiFetchingFailedState(apiError: result));
      emit(EditProductScreenErrorState(apiError: result));
      return;
    }

    emit(EditProductTranslateTextState(text: result));
  }

  void transliterate(String text) async {
    emit(EditProductShowCircularProgressIndicatorState());

    final result = await apiRepository.transliterate(text);

    if (result is ApiError) {
      emit(EditProductApiFetchingFailedState(apiError: result));
      emit(EditProductScreenErrorState(apiError: result));
      return;
    }

    emit(EditProductTransliterateState(text: result));
  }

  void getAllCategoriesAndSelectedCategories(int productId) async {
    emit(EditProductShowCircularProgressIndicatorState());

    final result1 = await apiRepository.getAllCategories();

    if (result1 is ApiError) {
      emit(EditProductApiFetchingFailedState(apiError: result1));
      emit(EditProductScreenErrorState(apiError: result1));
      return;
    }

    final result2 = await apiRepository.getSelectedCategories(productId);

    if (result2 is ApiError) {
      emit(EditProductApiFetchingFailedState(apiError: result2));
      emit(EditProductScreenErrorState(apiError: result2));
      return;
    }

    final List<Pair<int, String>> listOfSelectedCategories = [];

    if (result2 is List<Category>) {
      for (final category in result2) {
        listOfSelectedCategories.add(
            Pair(first: category.categoryId, second: category.categoryName));
      }
      listOfSelectedCategories.add(Pair(first: -1, second: "Add"));
    }

    emit(EditProductGetAllCategoriesAndSelectedCategoriesStates(
        categories: result1,
        listOfSelectedCategories: listOfSelectedCategories));
  }

  void onSelectedACategoryForEditProduct({
    required List<Pair<int, String>> listOfSelectedCategories,
    required Category category,
  }) {
    final insertingCategory =
        Pair(first: category.categoryId, second: category.categoryName);
    final insertPoint = listOfSelectedCategories.length - 1;
    listOfSelectedCategories.insert(insertPoint, insertingCategory);
    emit(EditProductReArrangedSelectedCategoriesState(
        listOfSelectedCategories: listOfSelectedCategories));
  }

  void onUnSelectACategoryForEditProduct({
    required List<Pair<int, String>> listOfSelectedCategories,
    required Category category,
  }) {
    listOfSelectedCategories
        .removeWhere((element) => category.categoryId == element.first);

    emit(EditProductReArrangedSelectedCategoriesState(
        listOfSelectedCategories: listOfSelectedCategories));
  }

  void onSelectedCategoryChipDeletedButtonPressed({
    required List<Pair<int, String>> listOfSelectedCategories,
    required int categoryId,
  }) {
    listOfSelectedCategories
        .removeWhere((element) => element.first == categoryId);
    emit(EditProductReArrangedSelectedCategoriesState(
        listOfSelectedCategories: listOfSelectedCategories));
  }

  void updateProduct(
      FoodItem product, Uint8List? imageByeArray, String? fileName) async {
    emit(EditProductShowCircularProgressIndicatorState());

    final result = await apiRepository.updateAProduct(product);

    if (result is ApiError) {
      emit(EditProductApiFetchingFailedState(apiError: result));
      emit(EditProductScreenErrorState(apiError: result));
      return;
    }

    if (fileName != null && imageByeArray != null) {
      if (imageByeArray.isNotEmpty) {
        final productPhotoUploadResult =
            await apiRepository.uploadProductImageAsByteArray(
          image: imageByeArray,
          fileName: fileName,
          foodItemId: product.foodItemId,
        );

        if (productPhotoUploadResult is ApiError) {
          emit(EditProductApiFetchingFailedState(apiError: result));
          emit(EditProductScreenErrorState(apiError: result));
          return;
        }
      }
    }

    if(imageByeArray==null){

      final imageRemoveResult = await apiRepository.removeAProductPhoto(product.foodItemId);
      if(imageRemoveResult is ApiError){
        emit(EditProductApiFetchingFailedState(apiError: imageRemoveResult));
        emit(EditProductScreenErrorState(apiError: imageRemoveResult));
        return;
      }
    }

    emit(EditProductUpdateSuccessState());
  }


}
