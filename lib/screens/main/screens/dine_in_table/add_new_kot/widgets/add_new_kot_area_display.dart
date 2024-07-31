import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_build_state/add_new_kot_build_State.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_cubit.dart';
import 'package:pos_mini/util/color_constants.dart';


class AddNewKotAreaDisplay extends StatelessWidget {
  const AddNewKotAreaDisplay({super.key});



  @override
  Widget build(BuildContext context) {
    List<DineInArea> listOfDineInArea = [];
    final addNewKotCubit = context.read<AddNewKotCubit>();

    int selectedAreaId = -1;
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;



      // Bloc builder
      return BlocBuilder<AddNewKotCubit, AddNewKotState>(
        // Build when
        buildWhen: (prev, cur) {

          if (cur is AddNewKotBuildState) {
            if (cur.result == null) {
              return false;
            }

            if (cur.result.runtimeType == List<DineInArea>) {
              return true;
            }
            return false;
          } else if (cur is AddNewKotSelectedDineInAreaIdState) {
            return true;
          }
          return false;
        },

        // Builder
        builder: (context, state) {


          if (state is AddNewKotBuildState) {
            if (state.result != null) {
              listOfDineInArea = state.result;

            }
          }

          if (state is AddNewKotSelectedDineInAreaIdState) {
            selectedAreaId = state.dineInAreaId;
          }

          return Card(
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            elevation: 1,
            child: ListView.separated(
              itemBuilder: (context, index) {
                if (index == listOfDineInArea.length) {
                  return const SizedBox();
                }

                final dineInArea = listOfDineInArea[index];
                return Center(
                  child: RotatedBox(
                    quarterTurns: width >= 120 ? 0 : 3,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: TextButton(
                        onPressed: () {

                          // GetTablesUnderADineInArea
                         addNewKotCubit.getTablesUnderADineInArea(dineInArea.id);
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: selectedAreaId == dineInArea.id
                                ? appOrangeColour
                                : deepBlueColour),
                        child: Text(
                          dineInArea.name,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: listOfDineInArea.length + 1,
            ),
          );
        },
      );
    });
  }
}
