import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/edit_product/edit_product_cubit.dart';
import 'package:pos_mini/main.dart';
import 'package:pos_mini/models/product/product.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/edit_product_screen/widget/edit_product_big_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/edit_product_screen/widget/edit_product_small_screen.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';
import 'package:pos_mini/util/pair.dart';

class EditProductMainScreen extends StatefulWidget {
  final Product product;

  const EditProductMainScreen({super.key, required this.product});

  @override
  State<EditProductMainScreen> createState() => _EditProductMainScreenState();
}

class _EditProductMainScreenState extends State<EditProductMainScreen> {
  Uint8List? _imageByteArray;

  ApiError? _apiError;

  String? _fileName;

  @override
  void initState() {
    if (widget.product.productImage != null) {
      if (widget.product.productImage!.isNotEmpty) {
        context
            .read<EditProductCubit>()
            .getAProductPhotoByteArray(widget.product.productImage!);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProductCubit, EditProductState>(
      listenWhen: (prev, cur) {
        if (cur is EditProductUpdateSuccessState ||
            cur is EditProductApiFetchingFailedState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is EditProductUpdateSuccessState) {
          Navigator.pop(context);
        }
        if (state is EditProductApiFetchingFailedState) {
          final apiError = state.apiError;
          final code = apiError.errorCode;
          final errorMessage = apiError.errorMessage;
          final errorData = apiError.errorData;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("$code, $errorMessage, $errorData"),
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      buildWhen: (prev, cur) {
        if (cur is EditProductScreenMainUiStates) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EditProductScreenErrorState) {
          _apiError = state.apiError;
        }

        if (state is EditProductProductImageSuccessState) {
          _imageByteArray = state.imageByteArray;
          _fileName = state.fileName;
        }

        if (state is EditProductRemoveImageState) {
          _imageByteArray = null;
        }

        return Scaffold(
          floatingActionButton: BlocBuilder<EditProductCubit, EditProductState>(
            builder: (context, state) {
              bool showProgressBar = false;
              if (state is EditProductShowCircularProgressIndicatorState) {
                showProgressBar = true;
              }
              return showProgressBar
                  ? const CircularProgressIndicator()
                  : const SizedBox();
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: AppBar(
            title: Row(
              children: [
                const Text("Edit "),
                Text(
                  widget.product.productName,
                  style: const TextStyle(color: Colors.deepPurple),
                ),
              ],
            ),
            actions: [
              if (_imageByteArray == null)
                TextButton(
                  onPressed: () {
                    context
                        .read<EditProductCubit>()
                        .pickImageFromLocalStorage();
                  },
                  child: const Row(
                    children: [
                      Text("Add Image"),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.add)
                    ],
                  ),
                )
            ],
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final screenWidth = constraints.widthConstraints().maxWidth;
              return Center(
                child: SizedBox(
                  width: screenWidth >= 900 ? 900 : screenWidth,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          if (_imageByteArray != null)
                            if (_imageByteArray!.isNotEmpty)
                              LayoutBuilder(
                                builder: (context, constraints) {
                                  final screenWidth =
                                      constraints.widthConstraints().maxWidth;

                                  final size = screenWidth > 600
                                      ? screenWidth > 900
                                          ? screenWidth > 1200
                                              ? 450
                                              : 350
                                          : 300
                                      : 250;
                                  return SizedBox(
                                    height: size.toDouble(),
                                    width: size.toDouble(),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: InkWell(
                                            onTap: () {
                                              context
                                                  .read<EditProductCubit>()
                                                  .removeProductImage();
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.black26),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                              child: const Icon(
                                                Icons.clear,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8, 0, 8, 0),
                                          child: Image.memory(
                                            _imageByteArray!,
                                            width: size - 50,
                                            height: size - 50,
                                            errorBuilder:
                                                (context, object, stack) {
                                              return SizedBox(
                                                width: size - 50,
                                                height: size - 50,
                                                child: const Center(
                                                  child: Text(
                                                    "Error on loading image",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                          const SizedBox(
                            height: 8,
                          ),
                          if (_apiError != null)
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${_apiError?.errorData}, ${_apiError?.errorMessage}",
                                  style: const TextStyle(color: Colors.red),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                              ],
                            ),
                          if (screenWidth >= 600)
                            EditProductBigScreen(
                              product: widget.product,
                              callBack: ({
                                required String productName,
                                required String productLocalName,
                                required String productPrice,
                                required String productTaxInPercentage,
                                required List<Pair<int, String>>
                                    selectedCategories,
                                required String info,
                              }) {
                                final List<int> categories = [];

                                for (final pair in selectedCategories) {
                                  if (pair.first != -1) {
                                    categories.add(pair.first);
                                  }
                                }

                                final product = Product(
                                  productId: widget.product.productId,
                                  productName: productName,
                                  productLocalName: productLocalName,
                                  productPrice: double.parse(productPrice),
                                  productTaxInPercentage:
                                      double.parse(productTaxInPercentage),
                                  categories: categories,
                                  info: info,
                                  productImage: widget.product.productImage,
                                );

                                context.read<EditProductCubit>().updateProduct(
                                    product, _imageByteArray, _fileName);
                              },
                            )
                          else
                            EditProductSmallScreen(
                              product: widget.product,
                              callBack: ({
                                required String productName,
                                required String productLocalName,
                                required String productPrice,
                                required String productTaxInPercentage,
                                required List<Pair<int, String>>
                                    selectedCategories,
                                required String info,
                              }) {
                                final List<int> categories = [];

                                for (final pair in selectedCategories) {
                                  if (pair.first != -1) {
                                    categories.add(pair.first);
                                  }
                                }

                                final product = Product(
                                  productId: widget.product.productId,
                                  productName: productName,
                                  productLocalName: productLocalName,
                                  productPrice: double.parse(productPrice),
                                  productTaxInPercentage:
                                      double.parse(productTaxInPercentage),
                                  categories: categories,
                                  info: info,
                                  productImage: widget.product.productImage,
                                );

                                context.read<EditProductCubit>().updateProduct(
                                    product, _imageByteArray, _fileName);
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
