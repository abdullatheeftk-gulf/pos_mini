import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/category/category.dart';

class AddCategoryAlertDialog extends StatefulWidget {
  const AddCategoryAlertDialog({super.key});

  @override
  State<AddCategoryAlertDialog> createState() => _AddCategoryAlertDialogState();
}

class _AddCategoryAlertDialogState extends State<AddCategoryAlertDialog> {
  final _categoryController = TextEditingController();

  @override
  void dispose() {
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Add Category",
        textAlign: TextAlign.center,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _categoryController,
            decoration: InputDecoration(
              label: Text(
                "Category Name",
                style: TextStyle(
                  color: Colors.black26.withOpacity(0.6),
                ),
              ),
              hintText: "Enter Category Name",
              hintStyle: TextStyle(
                color: Colors.black26.withOpacity(0.3),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              final category =
                  Category(categoryName: _categoryController.text.trim());
              context
                  .read<AddBloc>()
                  .add(AddAddACategoryEvent(category: category));
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.white),
            child: const Text("Add"),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
