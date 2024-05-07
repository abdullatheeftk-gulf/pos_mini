import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/blocs/add/dine_in/table/build_state/add_table_build_state.dart';
import 'package:pos_mini/blocs/add/dine_in/table/consumer_state/add_table_consumer_state.dart';
import 'package:pos_mini/models/barcode/barcode.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/area_select_drop_down_menu.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/widget/drop_down_for_no_of_seats.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class SmallAddTableScreen extends StatefulWidget {
  final DineInArea? dineInArea;

  const SmallAddTableScreen({super.key, required this.dineInArea});

  @override
  State<SmallAddTableScreen> createState() => _SmallAddTableScreenState();
}

class _SmallAddTableScreenState extends State<SmallAddTableScreen> {
  bool _showProgressBar = false;
  String? _errorMessage;

  String? _barcodeErrorText;

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

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Success"),
        content: const Text("Table is added Successfully!"),
        actions: [
          ElevatedButton(
            onPressed: () {
              _addTableCubit.navigateBack();
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
    return BlocConsumer<AddTableCubit, AddTableState>(
      listener: (context, state) {
        if (state is AddTableConsumerState) {
          final errorMessage = state.errorMessage;
          if (errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(errorMessage),
              duration: const Duration(seconds: 5),
            ));
          }
          if (state.showSuccessDialog != null) {
            _showSuccessDialog();
          }
          if (state.navigate != null) {
            Navigator.pop(context);
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is AddTableConsumerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is AddTableBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is AddTableBuildState) {
          _errorMessage = null;
          _barcodeErrorText = state.barcodeErrorMessage;
          //printDebug(state.errorMessage.toString());
          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
        }
        //printError(_errorMessage.toString());
        return Scaffold(
          appBar: AppBar(
            title: const Text("Add Table"),
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
                  const DropDownForNoOfSeats(),
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
                            areaId: 0);
                        _addTableCubit.addTable(
                            dineInTable: dineTable,
                            barcode:
                                Barcode(mBarcode: _barcodeController.text));
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
