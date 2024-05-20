import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/cubit/area_build_state/table_build_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/cubit/table_screen_cubit.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/widgets/table_display/widgets/table_item.dart';


class TadbleDisplay extends StatefulWidget {
  const TadbleDisplay({super.key});

  @override
  State<TadbleDisplay> createState() => _TadbleDisplayState();
}

class _TadbleDisplayState extends State<TadbleDisplay> {

  

  

  List<DineInTable>? dineInTables;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.widthConstraints().maxWidth;
          return BlocBuilder<TableScreenCubit, TableScreenState>(
            buildWhen: ((prev, cur) {
              if (cur is TableBuildState) {
                return true;
              }
              return false;
            }),
            builder: (context, state) {
              if (state is TableBuildState) {
                if (state.result != null) {
                  dineInTables = state.result;
                }
              }
              if (dineInTables == null) {
                return const Center(
                  child: Text("Empty List"),
                );
              }
              return GridView.count(
                crossAxisCount: width >= 600
                    ? (width > 1200)
                        ? (width > 1600)
                            ? 5
                            : 4
                        : 3
                    : 2,
                childAspectRatio: 2.8,
                children: List.generate(
                  dineInTables!.length,
                  (index) => TableItem(dineInTable: dineInTables![index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
