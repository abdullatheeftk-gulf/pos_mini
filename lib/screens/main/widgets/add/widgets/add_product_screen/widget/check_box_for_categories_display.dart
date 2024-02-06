import 'package:flutter/material.dart';

class CheckBoxForCategoriesDisplay extends StatefulWidget {
  final bool isChecked;
  final Function callBack;
  const CheckBoxForCategoriesDisplay({super.key, required this.callBack,required this.isChecked});

  @override
  State<CheckBoxForCategoriesDisplay> createState() => _CheckBoxForCategoriesDisplayState();
}

class _CheckBoxForCategoriesDisplayState extends State<CheckBoxForCategoriesDisplay> {
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
