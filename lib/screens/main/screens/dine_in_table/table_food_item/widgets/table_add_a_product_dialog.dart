import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/main.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/util/color_constants.dart';

class TableAddAProductDialog extends StatefulWidget {
  final FoodItem foodItem;
  const TableAddAProductDialog({super.key, required this.foodItem});

  @override
  State<TableAddAProductDialog> createState() => _TableAddAProductDialogState();
}

class _TableAddAProductDialogState extends State<TableAddAProductDialog> {

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
        widget.foodItem.foodItemName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          decoration: TextDecoration.underline,
          color: deepBlueColour,
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              '$baseUrl/downloadAnImage/${widget.foodItem.foodItemImage}',
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
                  hintText: 'Enter Notes about food_item',
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
                context.read<TableFoodSelectionCubit>().addFoodItemsToCart(
                    foodItem: widget.foodItem,
                    qty: _noOfTimesOrdered.toDouble(),
                    note: _noteController.text.trim().isEmpty ? null:_noteController.text.trim()
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: deepBlueColour,
              ),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
