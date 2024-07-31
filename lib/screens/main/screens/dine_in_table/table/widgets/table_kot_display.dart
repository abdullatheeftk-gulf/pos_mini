import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/kot_classes/kot/kot.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/table_screen_cubit.dart';

class TableKotDisplay extends StatefulWidget {
  final int areaId;
  const TableKotDisplay({super.key, required this.areaId});

  @override
  State<TableKotDisplay> createState() => _TableKotDisplayState();
}

class _TableKotDisplayState extends State<TableKotDisplay> {
  late final TableScreenCubit _tableScreenCubit;

  List<Kot> _listOfKot = [];

  @override
  void initState() {
    _tableScreenCubit = context.read<TableScreenCubit>();
    _tableScreenCubit.getAllKotListUnderAnArea(widget.areaId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableScreenCubit, TableScreenState>(
      buildWhen: (prev, cur) {
        if (cur is TableScreenGetKotListUnderAnArea) {
          return true;
        }
        return false;
      },

      // Todo
      builder: (context, state) {
        // get list of kot
        if (state is TableScreenGetKotListUnderAnArea) {
          _listOfKot = state.listOfKot;
        }

        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              _listOfKot.length,
              (index) {
                final kot = _listOfKot[index];
                return TableKotItem(kot: kot);
              },
            ),
          ),
        );
      },
    );
  }
}

class TableKotItem extends StatelessWidget {
  final Kot kot;

  const TableKotItem({super.key, required this.kot});

  @override
  Widget build(BuildContext context) {
    final tableWithChairs = kot.tablesWithChair!;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Kot id:- ${kot.kotId}"),
          const SizedBox(
            width: 8,
          ),
          const Text("Tables:- "),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(tableWithChairs.length, (index) {
              return Text(
                  "[${tableWithChairs[index].tableName} :- ${tableWithChairs[index].noOfChairRequired}], ");
            }),
          ),
          IconButton(
            onPressed: () {
              // Todo
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
