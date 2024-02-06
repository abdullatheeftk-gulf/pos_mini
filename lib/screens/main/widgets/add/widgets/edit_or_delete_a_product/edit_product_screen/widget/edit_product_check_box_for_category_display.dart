import 'package:flutter/material.dart';

class EditProductCheckBoxForCategoryDisplay extends StatefulWidget {
  final bool isChecked;
  final Function callBack;
  const EditProductCheckBoxForCategoryDisplay({super.key, required this.isChecked, required this.callBack});

  @override
  State<EditProductCheckBoxForCategoryDisplay> createState() => _EditProductCheckBoxForCategoryDisplayState();
}

class _EditProductCheckBoxForCategoryDisplayState extends State<EditProductCheckBoxForCategoryDisplay> {
  bool _isChecked = false;

  @override
  void initState() {
    _isChecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }


    return Checkbox(
      checkColor: Colors.green,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: _isChecked,
      onChanged: (bool? value) {
        widget.callBack(value!);
        setState(() {
          _isChecked = value;
        });
      },
    );
  }
}
