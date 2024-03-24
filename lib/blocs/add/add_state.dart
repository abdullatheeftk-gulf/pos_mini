part of 'add_bloc.dart';

@immutable
abstract class AddState {}

class AddInitialState extends AddState {}

final class AddUiActionStates extends AddState{}

final class AddApiFetchingFailedState extends AddUiActionStates{
  final ApiError apiError;

  AddApiFetchingFailedState({required this.apiError});
}





final class AddCategoryAddUiBuildStates extends AddState{}

final class AddShowCategoryAddShowProgressBarState extends AddCategoryAddUiBuildStates{}

final class AddGetAllCategoriesState extends AddCategoryAddUiBuildStates{
  final List<Category> categories;

  AddGetAllCategoriesState({required this.categories});
}

final class AddCategoryAddEditDeleteFailedState extends AddCategoryAddUiBuildStates{
  final ApiError apiError;

  AddCategoryAddEditDeleteFailedState({required this.apiError});
}

final class AddCategoryAddSuccessState extends AddCategoryAddUiBuildStates{
  final int id;

  AddCategoryAddSuccessState({required this.id});
}

final class AddEditAndDeleteCategorySuccessState extends AddCategoryAddUiBuildStates{
  final String result;

  AddEditAndDeleteCategorySuccessState({required this.result});
}




final class AddProductAddUiBuildStates extends AddState{}

final class AddShowCircularProgressIndicatorState extends AddProductAddUiBuildStates{}

final class AddProductFailedUiState extends AddProductAddUiBuildStates{
  final ApiError apiError;

  AddProductFailedUiState({required this.apiError});
}

final class AddGetAllCategoriesForProductAddSuccessState extends AddProductAddUiBuildStates{
  final List<Category> categories;

  AddGetAllCategoriesForProductAddSuccessState({required this.categories});
}



final class AddOnCategorySelectedForAProductState extends AddProductAddUiBuildStates{
  final List<Category> categories;

  AddOnCategorySelectedForAProductState({required this.categories});
}

final class AddOnCategoriesSelectedForProductState extends AddProductAddUiBuildStates{
  final List<Pair<int,String>> listOfSelectedCategories;

  AddOnCategoriesSelectedForProductState({required this.listOfSelectedCategories});
}

final class AddTranslateSuccessState extends AddProductAddUiBuildStates{
  final String text;

  AddTranslateSuccessState({required this.text});
}



final class AddTransliterateSuccessState extends AddProductAddUiBuildStates{
  final String text;

  AddTransliterateSuccessState({required this.text});

}

final class AddProductAddSuccessState extends AddProductAddUiBuildStates{
  final int result;

  AddProductAddSuccessState({required this.result});
}

final class AddProductImageAddSuccessState extends AddProductAddUiBuildStates{
  final String message;

  AddProductImageAddSuccessState({required this.message});

}

final class AddProductEditOrDeleteUiBuildStates extends AddState{}

final class AddProductEditOrDeleteCircularProgressIndicatorState extends AddProductEditOrDeleteUiBuildStates{}

final class AddProductEditOrDeleteFailedState extends AddProductEditOrDeleteUiBuildStates{
  final ApiError apiError;

  AddProductEditOrDeleteFailedState({required this.apiError});
}

final class AddProductGetProductForCategoriesState extends AddProductEditOrDeleteUiBuildStates{
  final List<FoodItem> products;
  final int categoryId;

  AddProductGetProductForCategoriesState({required this.categoryId, required this.products});
}


final class AddProductCategoryClickedState extends AddProductEditOrDeleteUiBuildStates{
  final int categoryId;

  AddProductCategoryClickedState({required this.categoryId});
}

final class AddProductGetAllCategoriesSuccessState extends AddProductEditOrDeleteUiBuildStates{
  final List<Category> categories;

  AddProductGetAllCategoriesSuccessState({required this.categories});
}

/*final class AddProductGetProductForCategoriesState extends AddProductEditOrDeleteUiBuildStates{
  final List<Product> products;

  AddProductGetProductForCategoriesState({required this.products});
}*/

final class AddNavigateToAddProductScreenState extends AddState{
  final Category? category;

  AddNavigateToAddProductScreenState({required this.category});
}





