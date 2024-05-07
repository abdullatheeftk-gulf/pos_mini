import 'package:flutter/material.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/edit_table_screen/edit_table_screen.dart';

import '../../../../../../../../ui_util/pop_up_menu_button.dart';

class ShowAllTableCard extends StatelessWidget {
  final DineInTable dineInTable;
  final DineInArea dineInArea;

  const ShowAllTableCard(
      {super.key, required this.dineInTable, required this.dineInArea});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                dineInTable.image,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(dineInTable.name),
              PopupMenuButton<PopUpMenuButton>(
                offset: const Offset(-20, 40),
                onSelected: (cb) {
                  if (cb.name == PopUpMenuButton.edit.name) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditTableScreen(
                          dineInArea: dineInArea,
                          dineInTable: dineInTable,
                        ),
                      ),
                    );
                  }
                  if (cb.name == PopUpMenuButton.delete.name) {
                    /* _areaCubit.deleteAnAreaById(
                        _listOfDineInArea[index]);*/
                  }
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<PopUpMenuButton>>[
                    const PopupMenuItem<PopUpMenuButton>(
                      value: PopUpMenuButton.edit,
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const PopupMenuItem<PopUpMenuButton>(
                      value: PopUpMenuButton.delete,
                      child: Text(
                        "Delete",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
          onTap: () {
            // Todo
          },
        ),
      ),
    );
  }
}
