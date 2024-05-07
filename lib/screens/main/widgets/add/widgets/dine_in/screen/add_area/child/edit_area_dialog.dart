import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/area/area_cubit.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class EditAreaDialog extends StatefulWidget {
  final DineInArea dineInArea;
  const EditAreaDialog({super.key, required this.dineInArea});

  @override
  State<EditAreaDialog> createState() => _EditAreaDialogState();
}

class _EditAreaDialogState extends State<EditAreaDialog> {
  late final TextEditingController _areaNameController;
  late final AreaCubit _areaCubit;

  @override
  void initState() {
    _areaNameController = TextEditingController(text: widget.dineInArea.name);
    _areaCubit = context.read<AreaCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _areaNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Edit Area"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _areaNameController,
            decoration: InputDecoration(
              label: Text(
                "Area Name",
                style: TextStyle(
                  color: Colors.black26.withOpacity(0.6),
                ),
              ),
              hintText: "Enter Area Name",
              hintStyle: TextStyle(
                color: Colors.black26.withOpacity(0.3),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              final areaName = _areaNameController.text.trim();
              final id = widget.dineInArea.id;
              final dineInArea = DineInArea(name: areaName,id: id);
              _areaCubit.editArea(dineInArea);
              Navigator.pop(context);
            },
            child: const Text("Edit"),
          )
        ],
      ),
    );
  }
}
