import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_product_screen/widget/check_box_for_categories_display.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/pair.dart';

import '../../../../../../../util/triple.dart';

class SmallScreenProductAddScreen extends StatefulWidget {
  final Function callBack;
  final Category? incomingCategory;

  const SmallScreenProductAddScreen({super.key, required this.callBack,required this.incomingCategory});

  @override
  State<SmallScreenProductAddScreen> createState() =>
      _SmallScreenProductAddScreenState();
}

class _SmallScreenProductAddScreenState
    extends State<SmallScreenProductAddScreen> {
  final _formKey = GlobalKey<FormState>();

  final _productNameController = TextEditingController();
  final _productLocalNameController = TextEditingController();
  final _productPriceController = TextEditingController();
  final _productTaxInPercentageController = TextEditingController(text: '0');
  final _infoController = TextEditingController();
  final _barcodeController = TextEditingController();

  int _selectedRadio = 0;

  List<Category> _categories = [];

  final List<Pair<int, String>> _listOfSelectedCategories = [];
  String? _categoryNotSelectedError;

  bool _showProgressBar = false;
  ApiError? _apiError;

  @override
  void initState() {
    context.read<AddBloc>().add(AddClearSelectedCategoriesForProductEvent());
    context.read<AddBloc>().add(AddGetAllCategoriesForProductAddEvent());
    if(widget.incomingCategory!=null) {
      context.read<AddBloc>().add(AddOnCategoriesSelectedForProductEvent(
          isCategoryClicked: true, category: widget.incomingCategory!));
    }
    super.initState();
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _productLocalNameController.dispose();
    _productPriceController.dispose();
    _productTaxInPercentageController.dispose();
    _infoController.dispose();
    _barcodeController.dispose();

    super.dispose();
  }

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
                              decoration: TextDecoration.underline),
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
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          CheckBoxForCategoriesDisplay(
                            callBack: (bool isCategoryClicked) {
                              final category = _categories[index];

                              context.read<AddBloc>().add(
                                  AddOnCategoriesSelectedForProductEvent(
                                      category: category,
                                      isCategoryClicked: isCategoryClicked));
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
  Widget build(BuildContext context) {
    return BlocBuilder<AddBloc, AddState>(
      buildWhen: (prev, cur) {
        if (cur is AddProductAddUiBuildStates) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is AddGetAllCategoriesForProductAddSuccessState) {
          _showProgressBar = false;
          _categories = state.categories;
        }

        if (state is AddShowCircularProgressIndicatorState) {
          _showProgressBar = true;
        }

        if (state is AddProductFailedUiState) {
          _showProgressBar = false;
          _apiError = state.apiError;
        }

        if (state is AddOnCategoriesSelectedForProductState) {
          _listOfSelectedCategories.clear();
          _listOfSelectedCategories.addAll(state.listOfSelectedCategories);
          _listOfSelectedCategories.add(Pair(first: -1, second: "Add"));
          _categoryNotSelectedError = null;
        }

        if (state is AddTranslateSuccessState) {
          _showProgressBar = false;
          _productLocalNameController.text = state.text;
        }

        if (state is AddTransliterateSuccessState) {
          _showProgressBar = false;
          _productLocalNameController.text = state.text;
        }

        if (state is AddProductAddSuccessState) {
          _showProgressBar = false;
          _productNameController.text = "";
          _productLocalNameController.text = "";
          _productPriceController.text = "";
          _productTaxInPercentageController.text = "";
          _listOfSelectedCategories.clear();
          _infoController.text = "";
          _categoryNotSelectedError = null;
          _selectedRadio = 0;
        }

        if (_listOfSelectedCategories.isEmpty) {
          _listOfSelectedCategories.add(Pair(first: -1, second: "Add"));
        }

        return Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (_apiError != null)
                  Text(
                    "${_apiError?.errorMessage}, ${_apiError?.errorData}",
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid food_item name';
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
                const SizedBox(
                  height: 16,
                ),
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
                            context.read<AddBloc>().add(
                                  AddTranslateTextEvent(
                                    text: _productNameController.text.trim(),
                                  ),
                                );
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
                            context.read<AddBloc>().add(
                                  AddTransliterateEvent(
                                    text: _productNameController.text.trim(),
                                  ),
                                );
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
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid food_item price';
                    }
                    try {
                      double.parse(value);
                    } catch (e) {
                      return 'Please enter valid food_item price in decimal';
                    }
                    return null;
                  },
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _productPriceController,
                  decoration: InputDecoration(
                      label: const Text("Price"),
                      hintText: "Enter Product Price",
                      hintStyle:
                          TextStyle(color: Colors.black26.withAlpha(100)),
                      border: const OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _productTaxInPercentageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid food_item tax';
                    }
                    try {
                      double.parse(value);
                    } catch (e) {
                      return 'Please enter valid food_item tax in decimal';
                    }
                    return null;
                  },
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      label: const Text("Tax"),
                      hintText: "Enter Product Tax in Percentage",
                      hintStyle:
                          TextStyle(color: Colors.black26.withAlpha(100)),
                      border: const OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _barcodeController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter valid barcode';
                    }

                    return null;
                  },
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                      label: const Text("Barcode"),
                      hintText: "Enter Barcode",
                      hintStyle:
                      TextStyle(color: Colors.black26.withAlpha(100)),
                      border: const OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
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
                        height: (_listOfSelectedCategories.length > 2)
                            ? _listOfSelectedCategories.length > 4
                                ? _listOfSelectedCategories.length > 6
                                    ? 140
                                    : 110
                                : 70
                            : 40,
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: _listOfSelectedCategories.map(
                            (pair) {
                              if (pair.first == -1) {
                                return InkWell(
                                  onTap: () {
                                    hideKeyboard(context);
                                    _showBottomSheet(
                                        context: context,
                                        listOfCategories: _categories,
                                        listOfSelectedCategory:
                                            _listOfSelectedCategories);
                                  },
                                  child: Chip(
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
                              return Chip(
                                label: Text(pair.second),
                                onDeleted: () {
                                  context.read<AddBloc>().add(
                                      AddRemoveOneItemFromTheSelectedCategoriesForProductEvent(
                                          categoryId: pair.first));
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
                  height: 16,
                ),
                TextFormField(
                  controller: _infoController,
                  decoration: InputDecoration(
                    label: const Text("Info"),
                    hintText: "Enter food_item info",
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
                                productPrice:
                                    _productPriceController.text.trim(),
                                productTaxInPercentage:
                                    _productTaxInPercentageController.text
                                        .trim(),
                                selectedCategories: _listOfSelectedCategories,
                                info: _infoController.text.trim(),
                                barcode:_barcodeController.text.trim()
                              );
                            }
                          },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                    ),
                    child: const Text("Save"))
              ],
            ),
          ),
        );
      },
    );
  }
}
