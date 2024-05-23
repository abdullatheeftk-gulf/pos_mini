import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/table_screen_cubit.dart';


class AreaDisplay extends StatefulWidget {
  const AreaDisplay({
    super.key,
  });

  @override
  State<AreaDisplay> createState() => _AreaDisplayState();
}

class _AreaDisplayState extends State<AreaDisplay> {
  List<DineInArea> _listOfDineInArea = [];

  int _selectedAreaId = 0;

  late TableScreenCubit _tableScreenCubit;

  @override
  void initState() {
    _tableScreenCubit = context.read<TableScreenCubit>();
    _tableScreenCubit.getAllDineInAreas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.widthConstraints().maxWidth;

        return BlocBuilder<TableScreenCubit, TableScreenState>(
          buildWhen: (prev, cur) {
            if (cur is TableScreenGetAllAreasState ||
                cur is TableSelectedAreaState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {

            if (state is TableScreenGetAllAreasState) {
              _listOfDineInArea = state.list;
              if(_listOfDineInArea.isNotEmpty) {
                _selectedAreaId = _listOfDineInArea.first.id;
              }
            }
            if (state is TableSelectedAreaState) {
              _selectedAreaId = state.selectedAreaId;
            }
            //return Text("sam");
            return Card(
              elevation: 1,
              shape: const RoundedRectangleBorder(),
              child:  ListView.separated(
                itemBuilder: (context, index) {
                  // dine in area
                  final dineInArea = _listOfDineInArea![index];

                  // return rotate box
                  return RotatedBox(
                    quarterTurns: screenWidth >= 120 ? 0 : 3,
                    child: TextButton(
                      onPressed: () {
                        _tableScreenCubit.selectAnArea(dineInArea.id);
                        _tableScreenCubit.getTablesUnderAnArea(dineInArea.id);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: _selectedAreaId == dineInArea.id
                            ? const Color.fromARGB(255, 236, 102, 56)
                            : const Color.fromARGB(255, 0, 26, 51),
                      ),
                      child: Text(dineInArea.name),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: _listOfDineInArea?.length ?? 0,
              ),
            );
          },
        );
      },
    );
  }
}
