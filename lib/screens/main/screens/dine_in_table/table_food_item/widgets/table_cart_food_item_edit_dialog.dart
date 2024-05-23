import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/util/color_constants.dart';

class TableCartFoodItemEditDialog extends StatefulWidget {
  final double screenWidth;
  final CartProductItem cartFoodItem;
  final int index;

  const TableCartFoodItemEditDialog({
    super.key,
    required this.screenWidth,
    required this.cartFoodItem,
    required this.index,
  });

  @override
  State<TableCartFoodItemEditDialog> createState() =>
      _TableCartFoodItemEditDialogState();
}

class _TableCartFoodItemEditDialogState
    extends State<TableCartFoodItemEditDialog> {
  // controllers
  final _noteController = TextEditingController();
  final _qtyController = TextEditingController();

  // Cubit
  late final TableFoodSelectionCubit _tableFoodSelectionCubit;

  @override
  void initState() {
    _tableFoodSelectionCubit = context.read<TableFoodSelectionCubit>();
    _noteController.text = widget.cartFoodItem.note ?? "";
    _qtyController.text = widget.cartFoodItem.qty.toString();
    super.initState();
  }

  @override
  void dispose() {
    _noteController.dispose();
    _qtyController.dispose();
    super.dispose();
  }

  // Build method
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
          child: Text(
        "Update",
        style: TextStyle(
          color: deepBlueColour,
          decoration: TextDecoration.underline,
        ),
      )),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Name
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Name                "),
              const Text(":  "),
              Expanded(
                child: TextFormField(
                  initialValue: widget.cartFoodItem.cartProductName,
                  readOnly: true,
                ),
              )
            ],
          ),

          // Local Name
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Local Name       "),
              const Text(":  "),
              Expanded(
                child: TextFormField(
                  initialValue: widget.cartFoodItem.cartProductLocalName,
                  readOnly: true,
                ),
              )
            ],
          ),

          // qnty
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Quantity            "),
              const Text(":  "),
              Expanded(
                child: TextFormField(
                  controller: _qtyController,
                  readOnly: false,
                ),
              )
            ],
          ),

          // price
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Price                   "),
              const Text(":  "),
              Expanded(
                child: TextFormField(
                  initialValue:
                      widget.cartFoodItem.product!.foodItemPrice.toString(),
                  readOnly: true,
                ),
              )
            ],
          ),

          // Note
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Note                  "),
              const Text(":  "),
              Expanded(
                child: TextFormField(
                  controller: _noteController,
                  readOnly: false,
                ),
              )
            ],
          ),

          // height
          const SizedBox(
            height: 24,
          ),

          // Button

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  _tableFoodSelectionCubit.updateCartFoodItemsList(
                    index: widget.index,
                    qty: double.parse(_qtyController.text.trim()),
                    note: _noteController.text.trim().isEmpty
                        ? null
                        : _noteController.text.trim(),
                  );
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: deepBlueColour,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Save"),
              ),
              const SizedBox(
                width: 8,
              ),

              // Delete button
              ElevatedButton(
                onPressed: () {
                  _tableFoodSelectionCubit.deleteCartFoodItem(
                      index: widget.index);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Delete"),
              ),
              const SizedBox(
                width: 8,
              ),

              // cancel button for screen width more than 450
              if (widget.screenWidth > 450)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
            ],
          ),

          // Cancel  button for screen width less than 450
          if (widget.screenWidth <= 450)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
              ],
            )
        ],
      ),
    );
  }
}
