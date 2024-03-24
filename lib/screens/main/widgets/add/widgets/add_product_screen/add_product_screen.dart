import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/category/category.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_product_screen/widget/big_screen_product_add_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_product_screen/widget/small_screen_product_add_screen.dart';
import 'package:pos_mini/screens/ui_util/show_floating_action_circular_progress_indicator.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';
import 'package:pos_mini/util/pair.dart';

class AddProductScreen extends StatefulWidget {
  final Category? incomingCategory;

  const AddProductScreen({super.key, required this.incomingCategory});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  FilePickerResult? result;
  String? fileName;
  PlatformFile? pickedFile;
  bool isImageLoading = false;
  File? fileToDisplay;

  Uint8List? _localImage;



  void _pickFile() async {
    try {
      setState(() {
        isImageLoading = true;
      });
      result = await FilePicker.platform
          .pickFiles(type: FileType.image, allowMultiple: false);

      if (result != null) {
        fileName = result!.files.first.name;
        pickedFile = result!.files.first;
        fileToDisplay = File(pickedFile!.path.toString());
        _localImage = await fileToDisplay!.readAsBytes();
        printError(fileName!);

      } else {
        setState(() {});
      }

      setState(() {
        isImageLoading = false;
      });
    } catch (e) {
      // ToDo
      printError(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BlocBuilder<AddBloc, AddState>(
        builder: (context, state) {
          bool showProgressBar = false;
          if (state is AddShowCircularProgressIndicatorState) {
            showProgressBar = true;
          } else {
            showProgressBar = false;
          }
          return showFloatingCircularProgressIndicator(
            context,
            showProgressBar,
          );
        },
      ),
      appBar: AppBar(
        title: const Text("Add Product"),
        actions: [
          IconButton(
            onPressed: () {
              _pickFile();
            },
            icon: const Row(
              children: [
                Text("Add Image"),
                SizedBox(
                  width: 4,
                ),
                Icon(Icons.add),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.widthConstraints().maxWidth;
          return Center(
            child: SizedBox(
              width: screenWidth >= 800 ? 800 : screenWidth,
              height: double.infinity,
              child: SingleChildScrollView(
                child: BlocBuilder<AddBloc, AddState>(
                  buildWhen: (prev, cur) {
                    if (cur is AddProductImageAddSuccessState ||
                        cur is AddProductAddSuccessState) {
                      return true;
                    }
                    return false;
                  },
                  builder: (context, state) {
                    if (state is AddProductImageAddSuccessState) {
                      result = null;
                      fileName = null;
                      pickedFile = null;
                      isImageLoading = false;
                      fileToDisplay = null;
                    }
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        if (pickedFile != null)
                          LayoutBuilder(builder: (context, constraints) {
                            final screenWidth =
                                constraints.widthConstraints().maxWidth;

                            final size = screenWidth > 600
                                ? screenWidth > 900
                                    ? screenWidth > 1200
                                        ? 400
                                        : 300
                                    : 250
                                : 200;

                            return Container(
                              height: size.toDouble(),
                              width: size.toDouble(),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 0.5)),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                 // Image.file(fileToDisplay!),
                                  Image.memory(_localImage!),
                                  const Align(
                                    alignment: Alignment.topRight,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.clear,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        const SizedBox(
                          height: 16,
                        ),
                        if (screenWidth >= 600)
                          BigScreenProductAddScreen(
                            incomingCategory: widget.incomingCategory,
                            callBack: ({
                              required String productName,
                              required String productLocalName,
                              required String productPrice,
                              required String productTaxInPercentage,
                              required List<Pair<int, String>>
                                  selectedCategories,
                              required String info,
                              required String barcode
                            }) {
                              final List<int> categories = [];
                              for (var pair in selectedCategories) {
                                if (pair.first != -1) {
                                  categories.add(pair.first);
                                }
                              }
                              final FoodItem product = FoodItem(
                                foodItemId: 0,
                                foodItemName: productName,
                                foodItemLocalName: productLocalName,
                                foodItemPrice: double.parse(productPrice),
                                foodItemTaxInPercentage:
                                    double.parse(productTaxInPercentage),
                                categories: categories,
                                info: info,
                                barcode: barcode
                              );

                              context.read<AddBloc>().add(
                                    AddProductAddEvent(
                                      file: fileToDisplay,
                                      product: product,
                                    ),
                                  );
                            },
                          )
                        else
                          SmallScreenProductAddScreen(
                            incomingCategory: widget.incomingCategory,
                            callBack: ({
                              required String productName,
                              required String productLocalName,
                              required String productPrice,
                              required String productTaxInPercentage,
                              required List<Pair<int, String>>
                                  selectedCategories,
                              required String info,
                              required String barcode
                            }) {
                              final List<int> categories = [];
                              for (var pair in selectedCategories) {
                                if (pair.first != -1) {
                                  categories.add(pair.first);
                                }
                              }
                              final FoodItem product = FoodItem(
                                foodItemId: 0,
                                foodItemName: productName,
                                foodItemLocalName: productLocalName,
                                foodItemPrice: double.parse(productPrice),
                                foodItemTaxInPercentage:
                                    double.parse(productTaxInPercentage),
                                categories: categories,
                                info: info,
                                barcode: barcode
                              );

                              context.read<AddBloc>().add(
                                    AddProductAddEvent(
                                      file: fileToDisplay,
                                      product: product,
                                    ),
                                  );
                            },
                          )
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
