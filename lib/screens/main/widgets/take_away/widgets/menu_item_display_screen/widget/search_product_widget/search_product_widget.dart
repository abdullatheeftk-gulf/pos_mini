import 'package:flutter/material.dart';

import 'package:pos_mini/models/product/product.dart';

class SearchProductWidget extends StatefulWidget {
  const SearchProductWidget({super.key, required this.screenWidth, required this.onSearchButtonClicked});

  final double screenWidth;
  final Function onSearchButtonClicked;

  @override
  State<SearchProductWidget> createState() => _SearchProductWidgetState();
}

class _SearchProductWidgetState extends State<SearchProductWidget> {
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
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18,
          decoration: TextDecoration.underline,
        ),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget.screenWidth > 400 ? 400 : widget.screenWidth,
            child: TextFormField(
              controller: _searchTextController,
              decoration: InputDecoration(
                label: const Text("Search"),
                hintText: "Enter search text",
                hintStyle: TextStyle(
                  color: Colors.black26.withOpacity(0.3),
                ),
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              widget.onSearchButtonClicked(_searchTextController.text);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            child: const Text("Search"),
          )
        ],
      ),
    );
  }
}
