part of 'take_away_bloc.dart';

@immutable
abstract class TakeAwayEvent {}

final class TakeAwayGetAllCategoriesEvent extends TakeAwayEvent{}

final class TakeAwayOnCategoryClickedEvent extends TakeAwayEvent{
  final int categoryId;

  TakeAwayOnCategoryClickedEvent({required this.categoryId});
}

final class TakeAwayOnMenuModeSelectedEvent extends TakeAwayEvent{
  final ProductView productView;

  TakeAwayOnMenuModeSelectedEvent({required this.productView});
}

final class TakeAwayOnProductSearchButtonClickedEvent extends TakeAwayEvent{
  final String searchText;

  TakeAwayOnProductSearchButtonClickedEvent({required this.searchText});
}

final class TakeAwayOnProductAddedToCartEvent extends TakeAwayEvent{
  final FoodItem product;
  final double qty;
  final String? note;

  TakeAwayOnProductAddedToCartEvent({required this.qty, required this.note, required this.product});
}


final class TakeAwayShowCartProductItemsEvent extends TakeAwayEvent{}

final class TakeAwayRemoveOneItemFromTheCartProductItemListEvent extends TakeAwayEvent{
  final int index;
  final double price;

  TakeAwayRemoveOneItemFromTheCartProductItemListEvent({required this.price, required this.index});
}

final class TakeAwayEditQuantityOfAProductEvent extends TakeAwayEvent{
  final int index;
  final double qty;
  final double amount;
  final double unitPrice;

  TakeAwayEditQuantityOfAProductEvent({required this.unitPrice, required this.amount, required this.index, required this.qty});
}