import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

import 'widget/add_product_list_card.dart';

class EditOrDeleteAProduct extends StatefulWidget {
  const EditOrDeleteAProduct({super.key});

  @override
  State<EditOrDeleteAProduct> createState() => _EditOrDeleteAProductState();
}

class _EditOrDeleteAProductState extends State<EditOrDeleteAProduct> {
  bool _showProgressBar = false;
  ApiError? _apiError;

  List<FoodItem> _products = [];

  int _categoryId = -100;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.widthConstraints().maxWidth;
          return BlocConsumer<AddBloc, AddState>(
            listener: (BuildContext context, AddState state) {
              if (state is AddApiFetchingFailedState) {
                final apiError = state.apiError;
                final message = apiError.errorMessage;
                final data = apiError.errorData;
                final code = apiError.errorCode;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$code, $message, $data"),
                    duration: const Duration(seconds: 3),
                  ),
                );
              }
            },
            listenWhen: (prev, cur) {
              if (cur is AddApiFetchingFailedState) {
                return true;
              }
              return false;
            },
            buildWhen: (prev, cur) {
              if (cur is AddProductEditOrDeleteUiBuildStates) {
                return true;
              }
              return false;
            },
            builder: (context, state) {
              if (state
                  is AddProductEditOrDeleteCircularProgressIndicatorState) {
                _showProgressBar = true;
              }
              if (state is AddProductEditOrDeleteFailedState) {
                _apiError = state.apiError;
                _showProgressBar = false;
              }

              if (state is AddProductGetProductForCategoriesState) {
                _apiError = null;
                _showProgressBar = false;
                _products = state.products;
                _categoryId = state.categoryId;
              }

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (_apiError != null)
                      Text(
                        "${_apiError?.errorMessage}, ${_apiError?.errorData}",
                        style: const TextStyle(color: Colors.red),
                      ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: screenWidth >= 550
                            ? (screenWidth > 900)
                                ? (screenWidth > 1200)
                                    ? 6
                                    : 4
                                : 2
                            : 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 2.8,
                        children: List.generate(
                          _products.length,
                          (index) => AddProductListCard(
                            product: _products[index],
                            categoryId: _categoryId,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
