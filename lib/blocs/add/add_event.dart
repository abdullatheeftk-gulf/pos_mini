part of 'add_bloc.dart';

@immutable
abstract class AddEvent {}

final class AddGetAllCategoriesEvent extends AddEvent{}

final class AddAddACategoryEvent extends AddEvent{
  final Category category;

  AddAddACategoryEvent({required this.category});
}

final class AddEditACategoryEvent extends AddEvent{
  final Category category;

  AddEditACategoryEvent({required this.category});
}

final class AddDeleteACategoryEvent extends AddEvent{

  final Category category;

  AddDeleteACategoryEvent({required this.category});
}


final class AddGetAllCategoriesForProductAddEvent extends AddEvent{}

final class AddOnAddCategorySelectedForAProductEvent extends AddEvent{

  final Category category;

  AddOnAddCategorySelectedForAProductEvent({required this.category});
}

final class AddOnCategoriesSelectedForProductEvent extends AddEvent{
  final Category category;
  final bool isCategoryClicked;

  AddOnCategoriesSelectedForProductEvent({required this.isCategoryClicked, required this.category});
}

final class AddClearSelectedCategoriesForProductEvent extends AddEvent{

}

final class AddRemoveOneItemFromTheSelectedCategoriesForProductEvent extends AddEvent{
  final int categoryId;

  AddRemoveOneItemFromTheSelectedCategoriesForProductEvent({required this.categoryId});
}

final class AddTranslateTextEvent extends AddEvent{
  final String text;

  AddTranslateTextEvent({required this.text});
}

final class AddTransliterateEvent extends AddEvent{
  final String text;

  AddTransliterateEvent({required this.text});
}

final class AddProductAddEvent extends AddEvent{
  final Product product;
  final File? file;

  AddProductAddEvent({required this.file, required this.product});
}

final class AddSearchProductEvent extends AddEvent{
  final String search;

  AddSearchProductEvent({required this.search});
}

final class AddProductCategoryClickedEvent extends AddEvent{
  final Category? category;
  final int categoryId;


  AddProductCategoryClickedEvent({required this.categoryId, required this.category});
}

final class AddProductGetAllCategoriesEvent extends AddEvent{
}

final class AddNavigateToAddProductScreenEvent extends AddEvent{

}

final class  DeleteAProductEvent extends AddEvent{
  final int productId;
  final int categoryId;

  DeleteAProductEvent({required this.categoryId, required this.productId});
}