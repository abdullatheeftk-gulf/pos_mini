import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/cart_display_screen/widget/cart_list_display_widget.dart';

class CartDisplayScreen extends StatefulWidget {
  const CartDisplayScreen({super.key});

  @override
  State<CartDisplayScreen> createState() => _CartDisplayScreenState();
}

class _CartDisplayScreenState extends State<CartDisplayScreen> {
  List<CartProductItem> _cartProductItems = [];
  double _total = 0;

  @override
  void initState() {
    context.read<TakeAwayBloc>().add(TakeAwayShowCartProductItemsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TakeAwayBloc, TakeAwayState>(
      buildWhen: (prev, cur) {
        if (cur is TakeAwayCartProductItemsScreenUiBuildStates) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is TakeAwayShowCartProductItemsState) {
          _cartProductItems = state.cartProductItems;
          _total = state.total;
        }
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final screenWidth = constraints.widthConstraints().maxWidth;

            return Scaffold(
                body: (_cartProductItems.isEmpty)

                    // Show empty cart
                    ? Center(
                        child: Icon(
                          Icons.no_food_rounded,
                          size: screenWidth > 600 ? 150 : 100,
                          color: const Color.fromARGB(124, 124, 124, 124),
                        ),
                      )

                    // Show cart products
                    : Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(
                                      '#',
                                      style: TextStyle(color: Colors.white),
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
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.blue),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 4.0, right: 4.0),
                                    child: Text(
                                      'Item',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(
                                      'Qty',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(
                                      'Price',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(
                                      'Amnt',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      color: Colors.blue),
                                  child: const Center(
                                    child: Text(''),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                              child: CartListDisplayWidget(
                            cartProductItems: _cartProductItems,
                            total: _total,
                          )),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                /*BottomConnectButton(
                          generateInvoiceButtonClicked: () {
                            _showSubmitAlertDialog(
                                cartProductItems, total, context);
                          },
                          connectThermalPrinterClicked: () {
                            // Todo
                          },
                        ),*/
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Generate invoice"),
                                ),
                                const SizedBox(
                                  height: 12,
                                )
                              ],
                            ),
                          )
                        ],
                      ));
          },
        );
      },
    );
  }
}
