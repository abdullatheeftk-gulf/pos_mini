import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class AreaSelectDropDownMenu extends StatefulWidget {
  final DineInArea? dineInArea;

  const AreaSelectDropDownMenu({super.key, this.dineInArea});

  @override
  State<AreaSelectDropDownMenu> createState() => _AreaSelectDropDownMenuState();
}

class _AreaSelectDropDownMenuState extends State<AreaSelectDropDownMenu> {
  late final AddTableCubit _addTableCubit;

  List<DineInArea> _listOfDineInArea = [];

  DineInArea? _dropDownValue;

  @override
  void initState() {
    printWarning("initState");
    _addTableCubit = context.read<AddTableCubit>();
    _addTableCubit.getAllAreas();
    if(widget.dineInArea!=null) {
      _addTableCubit.setDineInArea(widget.dineInArea!);
    }
    if(widget.dineInArea!=null) {
      _dropDownValue = widget.dineInArea;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTableCubit, AddTableState>(
      buildWhen: (prev,cur){
        if(cur is AddTableGetAllAreaState){
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if(state is AddTableGetAllAreaState){
          _listOfDineInArea = state.listOfDineInAreas;
          if(_listOfDineInArea.isNotEmpty && widget.dineInArea==null) {
            _dropDownValue = _listOfDineInArea[0];
          }
        }
        return SizedBox(
          width: double.maxFinite,
          child: DropdownButtonFormField<DineInArea>(
            decoration: const InputDecoration(
              label: Text("Area"),
              border: OutlineInputBorder(),
            ),
            value: _dropDownValue,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 16,
            elevation: 0,
            items: _listOfDineInArea.map((e) => DropdownMenuItem<DineInArea>(value: e,child: Text(e.name))).toList(),
            onChanged: (DineInArea? value) {
              _dropDownValue = value!;
              _addTableCubit.setDineInArea(value);
            },
              validator: (dn){
                if(dn==null){
                  return "Please select dine in area";
                }
                return null;
              },
          ),
        );
      },
    );
  }
}
