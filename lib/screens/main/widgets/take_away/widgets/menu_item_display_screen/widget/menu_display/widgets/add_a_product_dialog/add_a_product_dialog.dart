import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/main.dart';
import 'package:pos_mini/models/product/product.dart';

class AddAProductDialog extends StatefulWidget {
  final Product product;

  const AddAProductDialog({super.key, required this.product});

  @override
  State<AddAProductDialog> createState() => _AddAProductDialogState();
}

class _AddAProductDialogState extends State<AddAProductDialog> {
  final _noteController = TextEditingController();
  int _noOfTimesOrdered = 1;

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseUrl = dio.options.baseUrl;
    return AlertDialog(
      title: Text(
        widget.product.productName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              '$baseUrl/downloadAnImage/${widget.product.productImage}',
              width: 150,
              height: 150,
              errorBuilder: (context, object, stackTrace) {
                return const SizedBox(
                  width: 150,
                  height: 150,
                  child: Center(
                      child: Text(
                    "Error on loading image",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  )),
                );
              },
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'No of Items Required',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_noOfTimesOrdered != 1) {
                        _noOfTimesOrdered--;
                        setState(() {});
                      }
                    },
                    icon: const RotatedBox(
                      quarterTurns: 2,
                      child: Icon(
                        Icons.double_arrow,
                        color: Colors.red,
                      ),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Text(
                      '$_noOfTimesOrdered',
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        _noOfTimesOrdered++;
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.double_arrow,
                        color: Colors.green,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _noteController,
              decoration: InputDecoration(
                  label: const Text('Note'),
                  hintText: 'Enter Notes about product',
                  hintStyle: TextStyle(
                    color: Colors.black26.withOpacity(0.3),
                  ),
                  border: const OutlineInputBorder()),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                /* context.read<MainBloc>().add(
                    AddProductToCartEvent(
                        noOfItemsOrdered: _noOfTimesOrdered.toDouble(),
                        product: widget.product,
                        note: _noteController.text),
                  );*/

                context
                    .read<TakeAwayBloc>()
                    .add(TakeAwayOnProductAddedToCartEvent(
                      qty: _noOfTimesOrdered.toDouble(),
                      note: _noteController.text,
                      product: widget.product,
                    ));
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
