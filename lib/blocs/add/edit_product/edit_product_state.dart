part of 'edit_product_cubit.dart';

@immutable
abstract class EditProductState {}

final class EditProductInitial extends EditProductState {}

final class EditProductShowCircularProgressIndicatorState extends EditProductState{}

final class EditProductApiFetchingFailedState extends EditProductState{
  final ApiError apiError;

  EditProductApiFetchingFailedState({required this.apiError});
}





final class EditProductScreenMainUiStates extends EditProductState{}
final class EditProductScreenChildUiStates extends EditProductState{}

final class EditProductScreenErrorState extends EditProductScreenMainUiStates{
  final ApiError apiError;

  EditProductScreenErrorState({required this.apiError});
}

final class EditProductProductImageSuccessState extends EditProductScreenMainUiStates{
  final Uint8List imageByteArray;
  final String fileName;

  EditProductProductImageSuccessState({required this.fileName, required this.imageByteArray});
}

final class EditProductRemoveImageState extends EditProductScreenMainUiStates{}



final class EditProductGetAllCategoriesAndSelectedCategoriesStates extends EditProductScreenChildUiStates{
  final List<Category> categories;
  final List<Pair<int,String>> listOfSelectedCategories;

  EditProductGetAllCategoriesAndSelectedCategoriesStates({required this.categories, required this.listOfSelectedCategories});
}

final class EditProductTranslateTextState extends EditProductScreenChildUiStates{
  final String text;

  EditProductTranslateTextState({required this.text});
}

final class EditProductTransliterateState extends EditProductScreenChildUiStates{
  final String text;

  EditProductTransliterateState({required this.text});
}

final class EditProductReArrangedSelectedCategoriesState extends EditProductScreenChildUiStates{
  final List<Pair<int,String>> listOfSelectedCategories;

  EditProductReArrangedSelectedCategoriesState({required this.listOfSelectedCategories});
}

final class EditProductUpdateSuccessState extends EditProductState{

}







