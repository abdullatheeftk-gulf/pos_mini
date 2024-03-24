part of 'take_away_bloc.dart';

@immutable
abstract class TakeAwayState {}

final class TakeAwayInitialState extends TakeAwayState {}

final class TakeAwayUiBuildState extends TakeAwayState{}
final class TakeAwayUiActionState extends TakeAwayState{}

// Category
final class TakeAwayCategoryUiState extends TakeAwayUiBuildState{}


// Category
final class TakeAwayApiFetchingStartedState extends TakeAwayUiBuildState{}

final class TakeAwayApiFetchingFailedState extends TakeAwayUiActionState{
  final ApiError apiError;

  TakeAwayApiFetchingFailedState({required this.apiError});
}

final class TakeAwayMenuDisplayWidgetUiBuildState extends TakeAwayUiBuildState{}

// Category
final class TakeAwayGetAllCategoriesSuccessState extends TakeAwayCategoryUiState{
  final List<Category> categories;

  TakeAwayGetAllCategoriesSuccessState({required this.categories});
}

// menu display widget for error message
final class TakeAwayGetAllCategoriesFailedState extends TakeAwayMenuDisplayWidgetUiBuildState{
  final ApiError apiError;

  TakeAwayGetAllCategoriesFailedState({required this.apiError});
}

// category
final class TakeAwayOnCategoryClickedState extends TakeAwayCategoryUiState{
  final int categoryId;

  TakeAwayOnCategoryClickedState({required this.categoryId});
}

// menu display widget
final class TakeAwayGetProductByCategorySuccessState extends TakeAwayMenuDisplayWidgetUiBuildState{
  final List<FoodItem> products;

  TakeAwayGetProductByCategorySuccessState({required this.products});
}

// menu display widget  for error message
final class TakeAwayGetProductByCategoryFailedState extends TakeAwayMenuDisplayWidgetUiBuildState{
  final ApiError apiError;

  TakeAwayGetProductByCategoryFailedState({required this.apiError});
}

// menu display widget Circular progress indicator

final class TakeAwayScreenShowCircularProgressIndicatorState extends TakeAwayState{}

// menu display widget menu mode selected
final class TakeAwayOnMenuModeSelectedState extends TakeAwayMenuDisplayWidgetUiBuildState{
  final ProductView productView;

  TakeAwayOnMenuModeSelectedState({required this.productView});
}
// menu display widget empty food_item list
final class TakeAwayEmptyProductListState extends TakeAwayMenuDisplayWidgetUiBuildState{}


// Only for show badge
final class TakeAwayShowBadgeCountState extends TakeAwayState{
  final int count;

  TakeAwayShowBadgeCountState({required this.count});
}

final class TakeAwayCartProductItemsScreenUiBuildStates extends TakeAwayState{}

final class TakeAwayShowCartProductItemsState extends TakeAwayCartProductItemsScreenUiBuildStates{
  final List<CartProductItem> cartProductItems;
  final double total;

  TakeAwayShowCartProductItemsState({required this.total, required this.cartProductItems});
}








