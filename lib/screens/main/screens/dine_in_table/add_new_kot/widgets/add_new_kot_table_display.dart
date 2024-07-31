import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/models/kot_classes/table_with_chair/table_with_chair.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_build_state/add_new_kot_build_State.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_cubit.dart';


class AddNewKotTableDisplay extends StatelessWidget {
  const AddNewKotTableDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    List<DineInTable> dineInTables = [];
    List<TableWithChair> tableWithChairs = [];

    return BlocBuilder<AddNewKotCubit, AddNewKotState>(
      buildWhen: (prev, cur) {
        if (cur is AddNewKotBuildState) {
          if (cur.result == null) {
            return false;
          }
          if (cur.result.runtimeType == List<DineInTable>) {
            return true;
          }
          return false;
        }

        if (cur is AddNewKotTableWithChairSelectedState) {
          return true;
        }

        return false;
      },

      // Builder
      builder: (context, state) {
        if (state is AddNewKotBuildState) {
          if (state.result != null) {
            dineInTables = state.result;
          }
        }

        if (state is AddNewKotTableWithChairSelectedState) {
          tableWithChairs = state.tableWithChair;
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (tableWithChairs.isNotEmpty)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 36,
                    child: Row(
                      children: [
                        const Text("Tables:- "),
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final table = tableWithChairs[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Chip(
                                  label: Text(
                                      "${table.tableName} - ${table.noOfChairRequired}"),
                                  deleteIcon: const Icon(Icons.clear),
                                  onDeleted: () {
                                    // Delete seat selection
                                    context.read<AddNewKotCubit>().onChipDelete(index);
                                  },
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox();
                            },
                            itemCount: tableWithChairs.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ),
            Expanded(
              flex: 1,
              child: dineInTables.isNotEmpty ?
              // Table display
              LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  return GridView.count(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: _getCrossAxisCount(width),
                    children: List.generate(
                      dineInTables.length,
                      (index) {
                        final dineInTable = dineInTables[index];

                        return AddNewKotTableItm(
                          dineInTable: dineInTable,
                        );
                      },
                    ),
                  );
                },
              ) : const Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.hourglass_empty,size: 100,color: Colors.black38,),
                  SizedBox(height: 16,),
                  Text("Empty Tables",style: TextStyle(color: Colors.black38),)
                ],
              ),),
            ),
          ],
        );
      },
    );
  }

  // Get Cross Axis Count
  int _getCrossAxisCount(double width) {
    if (width <= 600) {
      return 2;
    } else if (width <= 1200) {
      return 3;
    } else if (width <= 1600) {
      return 4;
    }
    return 5;
  }
}

class AddNewKotTableItm extends StatelessWidget {
  final DineInTable dineInTable;

  const AddNewKotTableItm({super.key, required this.dineInTable});

  @override
  Widget build(BuildContext context) {
    // Cubit initialization
    final addNewKotCubit = context.read<AddNewKotCubit>();

    bool showRedColorForSeats =
        dineInTable.noOfSeats == dineInTable.noOfSeatsOccupied;

    return InkWell(
      onTap: showRedColorForSeats ? null : () {
        // handling table click event
        addNewKotCubit.onTableClickedEvent(dineInTable);
      },
      //Table item
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Image.asset(
              dineInTable.image,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                dineInTable.name,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: showRedColorForSeats ? Colors.red : Colors.blue,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
