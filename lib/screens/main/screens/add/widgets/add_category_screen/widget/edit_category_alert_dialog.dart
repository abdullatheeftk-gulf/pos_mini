import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/models/category/category.dart';

class EditCategoryAlertDialog extends StatefulWidget {
  final Category category;
  const EditCategoryAlertDialog({super.key, required this.category});

  @override
  State<EditCategoryAlertDialog> createState() => _EditCategoryAlertDialogState();
}

class _EditCategoryAlertDialogState extends State<EditCategoryAlertDialog> {
  final _categoryController = TextEditingController();

  @override
  void initState() {
    _categoryController.text = widget.category.categoryName;
    super.initState();
  }

  @override
  void dispose() {
    _categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Edit Category",
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

              final categoryToEdit = Category(categoryName: _categoryController.text.trim(),categoryId: widget.category.categoryId);
              context
                  .read<AddBloc>()
                  .add(AddEditACategoryEvent(category: categoryToEdit));
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
