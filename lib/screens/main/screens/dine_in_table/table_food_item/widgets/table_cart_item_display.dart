import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_cart_food_item_edit_dialog.dart';
import 'package:pos_mini/util/color_constants.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class TableCartItemDisplay extends StatelessWidget {
  final double total;
  final double screenWidth;
  final List<CartProductItem> cartFoodItems;



  const TableCartItemDisplay({
    super.key,
    required this.screenWidth,
    required this.cartFoodItems,
    required this.total,
  });

  void _showEditCartItemDialog(
    BuildContext context,
    CartProductItem cartProductItem,
    double screenWidth,
    int index,
  ) {
    showDialog(
        context: context,
        builder: (context) {
          return TableCartFoodItemEditDialog(
            screenWidth: screenWidth,
            cartFoodItem: cartProductItem,
            index: index,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // Cubit
    final TableFoodSelectionCubit tableFoodSelectionCubit = context.read<TableFoodSelectionCubit>();


    // Widget to  return
    return Padding(
      padding: EdgeInsets.all(_getColumnPadding(screenWidth)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header - Sticky header
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    color: deepBlueColour,
                  ),
                  child: Center(
                    child: Text(
                      '#',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _getFontSizeOfTheHeader(screenWidth),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    color: deepBlueColour,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Text(
                      'Item',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _getFontSizeOfTheHeader(screenWidth),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    color: deepBlueColour,
                  ),
                  child: Center(
                    child: Text(
                      'Qty',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _getFontSizeOfTheHeader(screenWidth),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    color: deepBlueColour,
                  ),
                  child: Center(
                    child: Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _getFontSizeOfTheHeader(screenWidth),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    color: deepBlueColour,
                  ),
                  child: Center(
                    child: Text(
                      _getAmountText(screenWidth),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _getFontSizeOfTheHeader(screenWidth),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    color: deepBlueColour,
                  ),
                  child: const Center(
                    child: Text(''),
                  ),
                ),
              ),
            ],
          ),

          // List
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                // Total row
                if (index == cartFoodItems.length) {
                  return Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 60,
                          child: Center(
                            child: Text(''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 13,
                        child: Text(
                          'Total',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: _getTotalFontHeight(screenWidth),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Center(
                          child: Text(
                            '$total',
                            style: TextStyle(
                              fontSize: _getTotalFontHeight(screenWidth),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: Text(''),
                      ),
                    ],
                  );
                }

                // Other rows

                final productPrice =
                    cartFoodItems[index].product?.foodItemPrice ?? 0.0;
                final qty = cartFoodItems[index].qty;
                final amount = productPrice * qty;

                // Row Widget
                return Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: _getHeightOfRows(
                            screenWidth, cartFoodItems[index].cartProductName),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              fontSize: _getFontSizeOfRows(screenWidth),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: _getHeightOfRows(
                            screenWidth, cartFoodItems[index].cartProductName),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  cartFoodItems[index].cartProductName,
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: _getFontSizeOfRows(screenWidth),
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                              if (cartFoodItems[index].cartProductLocalName !=
                                  null)
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    cartFoodItems[index].cartProductLocalName!,
                                    maxLines: 1,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize:
                                            _getFontSizeOfRows(screenWidth),
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: _getHeightOfRows(
                            screenWidth, cartFoodItems[index].cartProductName),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: Text(
                            "${cartFoodItems[index].qty.toInt()}",
                            style: TextStyle(
                              fontSize: _getFontSizeOfRows(screenWidth),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: _getHeightOfRows(
                            screenWidth, cartFoodItems[index].cartProductName),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: Text(
                            '${cartFoodItems[index].product?.foodItemPrice}',
                            style: TextStyle(
                                fontSize: _getFontSizeOfRows(screenWidth)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: _getHeightOfRows(
                          screenWidth,
                          cartFoodItems[index].cartProductName,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: Text(
                            '$amount',
                            style: TextStyle(
                                fontSize: _getFontSizeOfRows(screenWidth)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: _getHeightOfRows(
                          screenWidth,
                          cartFoodItems[index].cartProductName,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              _showEditCartItemDialog(
                                context,
                                cartFoodItems[index],
                                screenWidth,
                                index,
                              );
                            },
                            icon: Icon(
                              Icons.edit,
                              color: deepBlueColour,
                              size: _getEditIconSize(screenWidth),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: cartFoodItems.length + 1,
            ),
          ),

          // Button
          ElevatedButton(
            onPressed: () {
              tableFoodSelectionCubit.generateKot();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: deepBlueColour,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16)
            ),
            child: const Text("Generate KOT"),
          ),

          // Space
          const SizedBox(height: 16,)
        ],
      ),
    );
  }

  double _getFontSizeOfTheHeader(double screenWidth) {
    if (screenWidth <= 450) {
      return 13;
    } else if (screenWidth <= 800) {
      return 15;
    }
    return 17;
  }

  double _getFontSizeOfRows(double screenWidth) {
    if (screenWidth <= 450) {
      return 12;
    } else if (screenWidth <= 800) {
      return 14;
    }
    return 16;
  }

  double _getHeightOfRows(double screenWidth, String text) {
    if (screenWidth <= 450) {
      if (text.length > 20) {
        return 90;
      }
      return 60;
    } else if (screenWidth <= 800) {
      if (text.length > 20) {
        return 95;
      }
      return 65;
    }
    if (text.length > 20) {
      return 100;
    }
    return 70;
  }

  double _getEditIconSize(double screenWidth) {
    if (screenWidth <= 450) {
      return 18;
    } else if (screenWidth <= 800) {
      return 24;
    }
    return 32;
  }

  double _getTotalFontHeight(double screenWidth) {
    if (screenWidth <= 450) {
      return 14;
    } else if (screenWidth <= 800) {
      return 16;
    }
    return 20;
  }

  double _getColumnPadding(double screenWidth) {
    if (screenWidth <= 450) {
      return 2;
    } else if (screenWidth <= 800) {
      return 4;
    }
    return 8;
  }

  String _getAmountText(double screenWidth) {
    if (screenWidth <= 450) {
      return "Amnt";
    } else if (screenWidth <= 800) {
      return "Amount";
    }
    return "Amount";
  }
}
