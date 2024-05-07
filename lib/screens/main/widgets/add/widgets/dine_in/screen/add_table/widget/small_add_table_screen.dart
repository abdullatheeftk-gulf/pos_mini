
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/drop_down_for_no_of_seats.dart';

class SmallAddTableScreen extends StatefulWidget {
  const SmallAddTableScreen({super.key});

  @override
  State<SmallAddTableScreen> createState() => _SmallAddTableScreenState();
}

class _SmallAddTableScreenState extends State<SmallAddTableScreen> {
  bool _showProgressBar = false;
  String? _errorMessage = null;

  late final AddTableCubit _addTableCubit;

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _barcodeController = TextEditingController();


  @override
  void initState() {
    _addTableCubit = context.read<AddTableCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _barcodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              label: const Text("Name"),
              hintText: "Enter name of the Table",
              hintStyle: TextStyle(color: Colors.black26.withAlpha(100)),
              border: const OutlineInputBorder(),
            ),
            validator: (value){
              if(value==null || value.isEmpty){
                return "Enter proper name";
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
          TextFormField(
            controller: _barcodeController,
            decoration: InputDecoration(
              label: const Text("Barcode"),
              hintText: "Enter Barcode",
              hintStyle: TextStyle(color: Colors.black26.withAlpha(100)),
              border: const OutlineInputBorder(),
            ),
            validator: (value){
              if(value!=null){
                if(int.parse(value)<=0){
                  return "Proper no of seats";
                }
              }
              return null;
            },
          ),
          const SizedBox(height: 16,),
           const DropDownForNoOfSeats(),
          const SizedBox(height: 32,),

          ElevatedButton(onPressed: (){
            // Todo
          }, child: const Text("Add"),)
        ],
      ),
    );
  }
}
