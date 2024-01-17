import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/models/product/product.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/add_a_product_dialog/add_a_product_dialog.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_grid_view_display/menu_grid_view_display.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/widget/menu_display/widgets/menu_list_view_display/menu_list_view_display.dart';

import 'util/ProductView.dart';

class MenuDisplayWidget extends StatefulWidget {
  const MenuDisplayWidget({super.key});

  @override
  State<MenuDisplayWidget> createState() => _MenuDisplayWidgetState();
}

class _MenuDisplayWidgetState extends State<MenuDisplayWidget> {
  List<Product> products = [];

  // Menu Display mode select
  ProductView productView = ProductView.list;

  String errorMessage = "";

  bool _showEmptyListWidget = false;

  void _showProductAddDialog(Product product) {
    showDialog(
      context: context,
      builder: (_) => AddAProductDialog(product: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TakeAwayBloc, TakeAwayState>(
      buildWhen: (prev, cur) {
        if (cur is TakeAwayMenuDisplayWidgetUiBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is TakeAwayGetAllCategoriesFailedState) {
          final apiError = state.apiError;
          final apiErrorMessage = apiError.errorMessage;
          final apiErrorData = apiError.errorData;
          errorMessage = "$apiErrorMessage, $apiErrorData";
          _showEmptyListWidget = false;
        }
        if (state is TakeAwayGetProductByCategoryFailedState) {
          final apiError = state.apiError;
          final apiErrorMessage = apiError.errorMessage;
          final apiErrorData = apiError.errorData;
          errorMessage = "$apiErrorMessage, $apiErrorData";

          // if product fetching failed product list is empty
          products = [];
          _showEmptyListWidget = false;
        }
        if (state is TakeAwayGetProductByCategorySuccessState) {
          products = state.products;
          errorMessage = "";
          _showEmptyListWidget = false;
        }

        if (state is TakeAwayOnMenuModeSelectedState) {
          productView = state.productView;
          _showEmptyListWidget = false;
        }

        if (state is TakeAwayEmptyProductListState) {
          products = [];
          _showEmptyListWidget = true;
        }

        return Column(
          children: [
            // To show error message
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),

            // Menu mode selection widget
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<TakeAwayBloc>().add(
                          TakeAwayOnMenuModeSelectedEvent(
                              productView: ProductView.list));
                    },
                    icon: const Icon(Icons.list),
                    constraints: const BoxConstraints(),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<TakeAwayBloc>().add(
                          TakeAwayOnMenuModeSelectedEvent(
                              productView: ProductView.grid));
                    },
                    icon: const Icon(Icons.grid_view),
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ),

            // menu display section
            _showEmptyListWidget
                ? Expanded(
                    child: Center(
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          final width = constraints.widthConstraints().maxWidth;
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.no_food_rounded,
                                size: width > 600 ? 150 : 100,
                                color: const Color.fromARGB(124, 124, 124, 124),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "Empty List",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(124, 124, 124, 124),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  )
                : Expanded(
                    child: (productView == ProductView.list)
                        ? MenuListViewDisplay(
                            products: products,
                            callBackFunc: (context, product) {
                              _showProductAddDialog(product);
                            },
                          )
                        : MenuGridViewDisplay(
                            products: products,
                            callBackFunc: (context, product) {
                              _showProductAddDialog(product);
                            },
                          ),
                  ),
          ],
        );
      },
    );
  }
}
