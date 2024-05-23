import 'package:flutter/material.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/edit_table_screen/widget/big_edit_table_screen.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/edit_table_screen/widget/small_edit_table_screen.dart';

class EditTableScreen extends StatelessWidget {
  final DineInArea dineInArea;
  final DineInTable dineInTable;

  const EditTableScreen({super.key, required this.dineInArea, required this.dineInTable});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;

      return Padding(
        padding: const EdgeInsets.all(8),
        child: screenWidth <= 600
            ? SmallEditTableScreen(dineInArea: dineInArea,dineInTable: dineInTable,)
            : BigEditTableScreen(dineInArea: dineInArea),
      );
    });
  }
}
