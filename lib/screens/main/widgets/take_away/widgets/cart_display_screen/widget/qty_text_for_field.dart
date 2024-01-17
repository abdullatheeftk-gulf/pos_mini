import 'package:flutter/material.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';

class QtyTextForField extends StatefulWidget {
  final int value;
  final Function callBackFunc;

  const QtyTextForField(
      {super.key, required this.value, required this.callBackFunc});

  @override
  State<QtyTextForField> createState() => _QtyTextForFieldState();
}

class _QtyTextForFieldState extends State<QtyTextForField> {
  late String _qtyString;
  final _qtyController = TextEditingController();

  @override
  void initState() {
    _qtyString = widget.value.toString();
    _qtyController.text = _qtyString;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _qtyController,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLines: 1,
      decoration: const InputDecoration.collapsed(hintText: ''),
      onChanged: (value) {
        try {
          final result = int.tryParse(value);
          if (result != null) {
            widget.callBackFunc(value);
          }
        } catch (e) {
          e.runtimeType;
        }
      },
      onFieldSubmitted: (value) {
        widget.callBackFunc(value);
      },
    );
  }
}

class SubmitButtonAlertDialog extends StatefulWidget {
  final List<CartProductItem> cartProductItems;
  final double total;

  const SubmitButtonAlertDialog(
      {super.key, required this.cartProductItems, required this.total});

  @override
  State<SubmitButtonAlertDialog> createState() =>
      _SubmitButtonAlertDialogState();
}

class _SubmitButtonAlertDialogState extends State<SubmitButtonAlertDialog> {
  final _infoController = TextEditingController();
  final _customerNameController = TextEditingController();

  @override
  void dispose() {
    _customerNameController.dispose();
    _infoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Generate Invoice'),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _customerNameController,
            decoration: const InputDecoration(
                labelText: 'Customer Name',
                hintText: 'Enter Customer name ',
                hintStyle: TextStyle(color: Colors.black12),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _infoController,
            decoration: const InputDecoration(
                labelText: 'Note',
                hintText: 'Enter Note about Invoice ',
                hintStyle: TextStyle(color: Colors.black12),
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
              onPressed: () {
               /* final cart = Cart(
                  invoiceNo: 0,
                  total: widget.total,
                  totalTaxAmount: 0.0,
                  net: widget.total,
                  customerName: _customerNameController.text,
                  info: _infoController.text,
                  cartProductItems: widget.cartProductItems,
                  userId: null,
                  adminUserId: null,
                );
                context.read<MainBloc>().add(GenerateInvoiceEvent(cart: cart));*/
                Navigator.pop(context);
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}

