import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/table_screen_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/model/table_navigate_to_table_kot.dart';


class TableItem extends StatefulWidget {
  final DineInTable dineInTable;
  const TableItem({super.key, required this.dineInTable});

  @override
  State<TableItem> createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  late final TableScreenCubit _tableScreenCubit;
  @override
  void initState() {
    _tableScreenCubit = context.read<TableScreenCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool showRedColor =
        widget.dineInTable.noOfSeats == widget.dineInTable.noOfSeatsOccupied;

    return GestureDetector(
      onTap: () {
        _tableScreenCubit.navigate(
          TableNavigateToTableKot(
            tableId: widget.dineInTable.id,
            tableName: widget.dineInTable.name,
            totalNoOfChairs: widget.dineInTable.noOfSeats
          ),
        );
      },
      child: Card(
        elevation: 1,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(widget.dineInTable.image),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.dineInTable.name),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                      color: showRedColor ? Colors.red : Colors.blue,
                      shape: BoxShape.circle),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
