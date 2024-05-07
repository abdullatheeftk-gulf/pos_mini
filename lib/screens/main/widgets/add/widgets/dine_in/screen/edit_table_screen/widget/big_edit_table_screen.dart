import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/blocs/add/dine_in/table/build_state/add_table_build_state.dart';
import 'package:pos_mini/blocs/add/dine_in/table/consumer_state/add_table_consumer_state.dart';
import 'package:pos_mini/models/barcode/barcode.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';

import 'area_select_drop_down_menu.dart';
import 'drop_down_for_no_of_seats.dart';

class BigAddTableScreen extends StatefulWidget {
  final DineInArea? dineInArea;

  const BigAddTableScreen({super.key, this.dineInArea});

  @override
  State<BigAddTableScreen> createState() => _BigAddTableScreenState();
}

class _BigAddTableScreenState extends State<BigAddTableScreen> {
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
     
          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
        }
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
              child: Center(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final screenWidth = constraints.maxWidth;

                    return SizedBox(
                      width: screenWidth >= 800 ? 800 : screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 32,),
                          //Error text
                          _errorMessage != null
                              ? Text(
                                  _errorMessage!,
                                  style: TextStyle(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              : const SizedBox(),

                          // Name and barcode row
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Name field
                              Expanded(
                                child: TextFormField(
                                  controller: _nameController,
                                  decoration: InputDecoration(
                                    label: const Text("Name"),
                                    hintText: "Enter name of the Table",
                                    hintStyle: TextStyle(
                                        color: Colors.black26.withAlpha(100)),
                                    border: const OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Enter proper name";
                                    }
                                    return null;
                                  },
                                ),
                              ),

                              const SizedBox(
                                width: 8,
                              ),

                              // Barcode controller
                              Expanded(
                                child: TextFormField(
                                  controller: _barcodeController,
                                  decoration: InputDecoration(
                                    label: const Text("Barcode"),
                                    hintText: "Enter Barcode",
                                    hintStyle: TextStyle(
                                        color: Colors.black26.withAlpha(100)),
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
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: DropDownForNoOfSeats(),
                              ),
                              const SizedBox(width: 8,),
                              Expanded(
                                child: AreaSelectDropDownMenu(
                                  dineInArea: widget.dineInArea,
                                ),
                              ),
                            ],
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
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
