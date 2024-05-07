import 'package:flutter/material.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/big_add_table_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/small_add_table_screen.dart';

class AddTableScreen extends StatelessWidget {
  final DineInArea? dineInArea;

  const AddTableScreen({super.key, required this.dineInArea});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;


        return Padding(
          padding: const EdgeInsets.all(8),
          child: screenWidth <= 600
              ?  SmallAddTableScreen(dineInArea: dineInArea,)
              :  BigAddTableScreen(dineInArea: dineInArea,),
        );
      },
    );
  }
}
