import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/area/area_cubit.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';

class AddAreaDialog extends StatefulWidget {
  const AddAreaDialog({super.key});

  @override
  State<AddAreaDialog> createState() => _AddAreaControllerState();
}

class _AddAreaControllerState extends State<AddAreaDialog> {
  final _areaNameController = TextEditingController();
  late final AreaCubit _areaCubit;

  @override
  void dispose() {
    _areaNameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _areaCubit = context.read<AreaCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add Area"),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
              _areaCubit.addArea(DineInArea(name: areaName));
              Navigator.pop(context);
            },
            child: const Text("Add"),
          )
        ],
      ),
    );
  }
}
