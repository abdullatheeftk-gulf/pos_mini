import 'package:flutter/material.dart';
class AddAreaScreen extends StatefulWidget {
  const AddAreaScreen({super.key});

  @override
  State<AddAreaScreen> createState() => _AddAreaScreenState();
}

class _AddAreaScreenState extends State<AddAreaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Area"),),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [],
        ),
      )
    );
  }
}
