import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/cart_display_screen/widget/qty_text_for_field.dart';

class CartListDisplayWidget extends StatelessWidget {
  final List<CartProductItem> cartProductItems;
  final double total;

  const CartListDisplayWidget({
    super.key,
    required this.cartProductItems,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == cartProductItems.length) {
          return Row(
            children: [
              const Expanded(
                flex: 2,
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(''),
                  ),
                ),
              ),
              const Expanded(
                flex: 13,
                child: Text(
                  'Total',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: Text(
                    '$total',
                    style: const TextStyle(
                      fontSize: 16,
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
        final productPrice =
            cartProductItems[index].product?.productPrice ?? 0.0;
        final qty = cartProductItems[index].qty;
        final amount = productPrice * qty;
        return Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Center(
                  child: Text('${index + 1}'),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.centerLeft,
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          cartProductItems[index].cartProductName,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      if (cartProductItems[index].cartProductLocalName != null)
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            cartProductItems[index].cartProductLocalName!,
                            textAlign: TextAlign.end,
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
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Center(
                  child: QtyTextForField(
                    value: cartProductItems[index].qty.toInt(),
                    callBackFunc: (value) {
                      final nQty = double.parse(value);
                      /*context.read<MainBloc>().add(
                          ReArrangeCartProductItemsQtyEvent(
                              index: index, qty: nQty));*/
                      context.read<TakeAwayBloc>().add(
                            TakeAwayEditQuantityOfAProductEvent(
                              amount: amount,
                              index: index,
                              qty: nQty,
                              unitPrice: productPrice
                            ),
                          );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Center(
                  child:
                      Text('${cartProductItems[index].product?.productPrice}'),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Center(
                  child: Text('$amount'),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 60,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      context.read<TakeAwayBloc>().add(
                            TakeAwayRemoveOneItemFromTheCartProductItemListEvent(
                              price: amount,
                              index: index,
                            ),
                          );
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      itemCount: cartProductItems.length + 1,
    );
  }
}
