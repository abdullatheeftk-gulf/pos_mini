import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/barcode/barcode.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/area_select_drop_down_menu.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/drop_down_for_no_of_seats.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/edit_table_screen/bloc/build_state/edit_table_build_state.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/edit_table_screen/bloc/consumer_state/edit_table_consumer_state.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/edit_table_screen/bloc/edit_table_cubit.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class SmallEditTableScreen extends StatefulWidget {
  final DineInArea dineInArea;
  final DineInTable dineInTable;

  const SmallEditTableScreen(
      {super.key, required this.dineInArea, required this.dineInTable});

  @override
  State<SmallEditTableScreen> createState() => _SmallEditTableScreenState();
}

class _SmallEditTableScreenState extends State<SmallEditTableScreen> {
  bool _showProgressBar = false;
  String? _errorMessage;

  String? _barcodeErrorText;

  late final EditTableCubit _editTableCubit;

  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _barcodeController = TextEditingController();

  @override
  void initState() {
    _editTableCubit = context.read<EditTableCubit>();
    _nameController.text = widget.dineInTable.name;

    _editTableCubit.getBarcodeByTableId(widget.dineInTable.id);

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _barcodeController.dispose();
    super.dispose();
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Success"),
        content: const Text("Table is added Successfully!"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Ok"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditTableCubit, EditTableState>(
      listener: (context, state) {
        if (state is EditTableConsumerState) {
          final errorMessage = state.errorMessage;
          if (errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                duration: const Duration(seconds: 5),
              ),
            );
          }

          if (state.navigate != null) {
            Navigator.pop(context);
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is EditTableConsumerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is EditTableBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is EditTableBuildState) {
          _errorMessage = null;
          _barcodeErrorText = state.barcodeErrorMessage;

          if (state.result is Barcode) {
            printError(state.result.toString());
            final b = state.result as Barcode;
            _barcodeController.text = b.mBarcode!;
          }

          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("Edit Table"),
          ),
          floatingActionButton: _showProgressBar
              ? const CircularProgressIndicator()
              : const SizedBox(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _errorMessage != null
                      ? Text(
                          _errorMessage!,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),

                  //Name text field
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      label: const Text("Name"),
                      hintText: "Enter name of the Table",
                      hintStyle:
                          TextStyle(color: Colors.black26.withAlpha(100)),
                      border: const OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter proper name";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  //Barcode text field
                  TextFormField(
                    controller: _barcodeController,
                    decoration: InputDecoration(
                      label: const Text("Barcode"),
                      hintText: "Enter Barcode",
                      hintStyle:
                          TextStyle(color: Colors.black26.withAlpha(100)),
                      border: const OutlineInputBorder(),
                      errorText: _barcodeErrorText,
                    ),
                    validator: (value) {
                      if (value != null) {
                        if (value.isEmpty) {
                          return "Enter proper barcode";
                        }
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  // Drop down for no of seats
                  DropDownForNoOfSeats(dineInTable: widget.dineInTable,),
                  const SizedBox(
                    height: 16,
                  ),

                  AreaSelectDropDownMenu(
                    dineInArea: widget.dineInArea,
                  ),

                  const SizedBox(
                    height: 32,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final dineTable = DineInTable(
                          name: _nameController.text,
                          image: "",
                          noOfSeats: 0,
                          noOfSeatsOccupied: 0,
                          areaId: 0,
                        );


                      }
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
