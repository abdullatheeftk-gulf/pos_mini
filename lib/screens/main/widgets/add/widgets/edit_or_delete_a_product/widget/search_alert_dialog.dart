import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';

class SearchAlertDialog extends StatefulWidget {
  const SearchAlertDialog({super.key});

  @override
  State<SearchAlertDialog> createState() => _SearchAlertDialogState();
}

class _SearchAlertDialogState extends State<SearchAlertDialog> {
  final _searchTextController = TextEditingController();

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Search A Product",
        textAlign: TextAlign.center,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.blue,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _searchTextController,
            decoration: InputDecoration(
              label: const Text("search"),
              hintText: "Enter food_item name",
              hintStyle: TextStyle(color: Colors.black26.withAlpha(100)),
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AddBloc>().add(
                    AddSearchProductEvent(
                      search: _searchTextController.text.trim(),
                    ),
                  );
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 26, 51),
              foregroundColor: Colors.white,
            ),
            child: const Text("Search"),
          )
        ],
      ),
    );
  }
}
