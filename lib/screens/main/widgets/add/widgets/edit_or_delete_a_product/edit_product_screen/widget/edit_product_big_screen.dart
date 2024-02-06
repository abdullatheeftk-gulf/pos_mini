import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/edit_product/edit_product_cubit.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/product/product.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/pair.dart';
import 'package:pos_mini/util/triple.dart';

import 'edit_product_check_box_for_category_display.dart';

class EditProductBigScreen extends StatefulWidget {
  final Product product;

  final Function callBack;

  //final Category? incomingCategory;

  const EditProductBigScreen({
    super.key,
    required this.product,
    required this.callBack,
    // this.incomingCategory,
  });

  @override
  State<EditProductBigScreen> createState() => _EditProductBigScreenState();
}

class _EditProductBigScreenState extends State<EditProductBigScreen> {
  final _formKey = GlobalKey<FormState>();

  int _selectedRadio = 0;

  List<Category> _categories = [];

  List<Pair<int, String>> _listOfSelectedCategories = [];

  String? _categoryNotSelectedError;

  bool _showProgressBar = false;

  ApiError? _apiError;

  final _productNameController = TextEditingController();
  final _productLocalNameController = TextEditingController();
  final _productPriceController = TextEditingController();
  final _productTaxInPercentageController = TextEditingController();
  final _infoController = TextEditingController();

  void _showBottomSheet({
    required BuildContext context,
    required List<Category> listOfCategories,
    required List<Pair<int, String>> listOfSelectedCategory,
  }) {
    final List<Triple<int, Category, bool>> newTripleList = [];

    for (var category in _categories) {
      bool isCategoryNotAdded = true;
      for (var pair in _listOfSelectedCategories) {
        if (pair.first == category.categoryId) {
          newTripleList.add(
            Triple(first: category.categoryId, second: category, third: true),
          );
          isCategoryNotAdded = false;
        }
      }
      if (isCategoryNotAdded) {
        newTripleList.add(
            Triple(first: category.categoryId, second: category, third: false));
      }
    }

    showBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      elevation: 6,
      builder: (context) {
        return SizedBox(
          height: 600,
          child: Column(
            children: [
              SizedBox(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          "Add Categories",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 26, 51),
                            fontSize: 24,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.brown,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        icon: const Icon(Icons.clear),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(),

              //Showing list of categories
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          EditProductCheckBoxForCategoryDisplay(
                            callBack: (bool isCategoryClicked) {
                              final category = _categories[index];

                              if (isCategoryClicked) {
                                // Call Category clicked event
                                context
                                    .read<EditProductCubit>()
                                    .onSelectedACategoryForEditProduct(
                                      listOfSelectedCategories:
                                          listOfSelectedCategory,
                                      category: category,
                                    );
                              } else {
                                context
                                    .read<EditProductCubit>()
                                    .onUnSelectACategoryForEditProduct(
                                      listOfSelectedCategories:
                                          listOfSelectedCategory,
                                      category: category,
                                    );
                              }
                            },
                            isChecked: newTripleList[index].third,
                          ),
                          Text(_categories[index].categoryName)
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: _categories.length,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  onPressed: () {
                    //Bottom sheet will be closed
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                      foregroundColor: Colors.white),
                  child: const Text('Save'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void initState() {
    context
        .read<EditProductCubit>()
        .getAllCategoriesAndSelectedCategories(widget.product.productId);

    _productNameController.text = widget.product.productName;
    _productLocalNameController.text = widget.product.productLocalName ?? "";
    _productPriceController.text = widget.product.productPrice.toString();
    _productTaxInPercentageController.text =
        widget.product.productTaxInPercentage.toString();
    _infoController.text = widget.product.info ?? "";

    super.initState();
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _productLocalNameController.dispose();
    _productPriceController.dispose();
    _productTaxInPercentageController.dispose();
    _infoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProductCubit, EditProductState>(
      buildWhen: (prev, cur) {
        if (cur is EditProductScreenChildUiStates) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EditProductTranslateTextState) {
          _productLocalNameController.text = state.text;
        }

        if (state is EditProductTransliterateState) {
          _productLocalNameController.text = state.text;
        }

        if (state is EditProductGetAllCategoriesAndSelectedCategoriesStates) {
          _listOfSelectedCategories = state.listOfSelectedCategories;
          _categories = state.categories;
        }

        if (state is EditProductReArrangedSelectedCategoriesState) {
          _listOfSelectedCategories = state.listOfSelectedCategories;
        }

        return Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                // Show error
                if (_apiError != null)
                  Text(
                    "${_apiError?.errorMessage}, ${_apiError?.errorData}",
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),

                // Show product name
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid product name';
                          }
                          return null;
                        },
                        controller: _productNameController,
                        decoration: InputDecoration(
                          label: const Text("Name"),
                          hintText: "Enter Product Name",
                          hintStyle: TextStyle(
                            color: Colors.black26.withAlpha(100),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: _productLocalNameController,
                            decoration: InputDecoration(
                              label: const Text("Local Name"),
                              hintText: "Enter Product Local Name",
                              hintStyle: TextStyle(
                                color: Colors.black26.withAlpha(100),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                          ),

                          // Translation and transliteration
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedRadio,
                                    activeColor: Colors.green,
                                    onChanged: (value) {
                                      context
                                          .read<EditProductCubit>()
                                          .translate(_productNameController.text
                                              .trim());
                                      setState(() {
                                        _selectedRadio = 1;
                                      });
                                    },
                                  ),
                                  const Text('Translate'),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: _selectedRadio,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      context
                                          .read<EditProductCubit>()
                                          .transliterate(_productNameController
                                              .text
                                              .trim());
                                      setState(() {
                                        _selectedRadio = 2;
                                      });
                                    },
                                  ),
                                  const Text('Transliterate'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid product price';
                          }
                          try {
                            double.parse(value);
                          } catch (e) {
                            return 'Please enter valid product price in decimal';
                          }
                          return null;
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        controller: _productPriceController,
                        decoration: InputDecoration(
                            label: const Text("Price"),
                            hintText: "Enter Product Price",
                            hintStyle:
                                TextStyle(color: Colors.black26.withAlpha(100)),
                            border: const OutlineInputBorder()),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _productTaxInPercentageController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid product tax';
                          }
                          try {
                            double.parse(value);
                          } catch (e) {
                            return 'Please enter valid product tax in decimal';
                          }
                          return null;
                        },
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        decoration: InputDecoration(
                            label: const Text("Tax"),
                            hintText: "Enter Product Tax in Percentage",
                            hintStyle:
                                TextStyle(color: Colors.black26.withAlpha(100)),
                            border: const OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),

                // Categories Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Categories:-     ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: SizedBox(
                        height:
                            (_listOfSelectedCategories.length > 4) ? 70 : 40,
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: _listOfSelectedCategories.map(
                            (pair) {
                              if (pair.first == -1) {
                                return InkWell(
                                  onTap: () {
                                    hideKeyboard(context);

                                    //Show Categories Bottom sheet
                                    _showBottomSheet(
                                      context: context,
                                      listOfCategories: _categories,
                                      listOfSelectedCategory:
                                          _listOfSelectedCategories,
                                    );
                                  },

                                  //Add category Button
                                  child: Chip(
                                    deleteButtonTooltipMessage: "Add",
                                    label: const Text(
                                      'Add',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    deleteIcon: Transform(
                                      transform: Matrix4.identity()..scale(0.8),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onDeleted: () {
                                      hideKeyboard(context);

                                      // Show category selection bottom sheet
                                      _showBottomSheet(
                                          context: context,
                                          listOfCategories: _categories,
                                          listOfSelectedCategory:
                                              _listOfSelectedCategories);
                                    },
                                    backgroundColor:
                                        const Color.fromARGB(255, 236, 102, 56),
                                    visualDensity: const VisualDensity(
                                        horizontal: -4, vertical: -4),
                                  ),
                                );
                              }

                              // Selected Categories
                              return Chip(
                                label: Text(pair.second),
                                deleteButtonTooltipMessage: "Remove",
                                onDeleted: () {
                                  context
                                      .read<EditProductCubit>()
                                      .onSelectedCategoryChipDeletedButtonPressed(
                                        listOfSelectedCategories:
                                            _listOfSelectedCategories,
                                        categoryId: pair.first,
                                      );
                                },
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                if (_categoryNotSelectedError != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      _categoryNotSelectedError!,
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _infoController,
                  decoration: InputDecoration(
                    label: const Text("Info"),
                    hintText: "Enter product info",
                    hintStyle: TextStyle(
                      color: Colors.black26.withAlpha(100),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 16,
                ),

                // Update button
                ElevatedButton(
                  onPressed: _showProgressBar
                      ? null
                      : () {
                          hideKeyboard(context);
                          if (_listOfSelectedCategories.length <= 1) {
                            _categoryNotSelectedError =
                                "Categories are not selected";
                            setState(() {});
                            return;
                          }
                          if (_formKey.currentState!.validate()) {
                            _apiError = null;
                            widget.callBack(
                              productName: _productNameController.text.trim(),
                              productLocalName:
                                  _productLocalNameController.text.trim(),
                              productPrice: _productPriceController.text.trim(),
                              productTaxInPercentage:
                                  _productTaxInPercentageController.text.trim(),
                              selectedCategories: _listOfSelectedCategories,
                              info: _infoController.text.trim(),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                  ),
                  child: const Text("Update"),
                )
              ],
            ));
      },
    );
  }
}
