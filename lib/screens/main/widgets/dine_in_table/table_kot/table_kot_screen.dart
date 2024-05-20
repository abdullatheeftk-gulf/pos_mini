import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/dine_in_kot/dine_in_kot.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/table_food_item_display_screen.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/build_state/table_kot_build_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/listener_state/table_kot_listener_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/table_kot_cubit.dart';

class TableKotScreen extends StatefulWidget {
  final int tableId;
  final String tableName;
  final int totalNoOfChairs;
  const TableKotScreen({
    super.key,
    required this.tableId,
    required this.tableName,
    required this.totalNoOfChairs,
  });

  @override
  State<TableKotScreen> createState() => _TableKotScreenState();
}

class _TableKotScreenState extends State<TableKotScreen> {
  // Cubit
  late final TableKotCubit _tableKotCubit;

  bool _showProgressBar = false;
  List<DineInKot>? _listOfDineInKot;
  String? _errorMessage;
  int _noOfChairUsed = 0;
  int _noOfChairsSelected = 1;

  @override
  void initState() {
    _tableKotCubit = context.read<TableKotCubit>();

    _tableKotCubit.getAllKotUnderATable(widget.tableId);

    super.initState();
  }

  void _showDialog() {
    final chairsRemaining = widget.totalNoOfChairs - _noOfChairUsed;

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Chairs Required"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<int>(
                  decoration: const InputDecoration(
                    label: Text("No Of seats"),
                    border: OutlineInputBorder(),
                  ),
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 16,
                  elevation: 0,
                  value: _noOfChairsSelected,
                  style: const TextStyle(color: Colors.deepPurple),
                  items: List.generate(
                    chairsRemaining,
                    (index) => DropdownMenuItem<int>(
                      value: index + 1,
                      child: Text("${index + 1}"),
                    ),
                  ),
                  onChanged: (int? value) {
                    if (value != null) {
                      _noOfChairsSelected = value;
                    }
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _tableKotCubit.navigate(
                      tableId: widget.tableId,
                      noOfChairRequired: _noOfChairsSelected
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Column(
                    children: [
                      Text("OK"),
                      SizedBox(
                        height: 2,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // ScreenWidth
        final width = constraints.widthConstraints().maxWidth;

        // Scaffold
        return BlocConsumer<TableKotCubit, TableKotState>(
          listener: (context, state) {
            if (state is TableKotListenerState) {
              // Show snackbar
              if (state.errorMessage != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessage!),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 5),
                  ),
                );
              }

              // navigate
              if (state.navigate != null) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const TableFoodItemDisplayScreen()));
              }

              if (state.showAddDialog != null) {
                _showDialog();
              }
            }
          },
          listenWhen: (prev, cur) {
            if (cur is TableKotListenerState) {
              return true;
            }
            return false;
          },
          buildWhen: (prev, cur) {
            if (cur is TableKotBuildState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is TableKotBuildState) {
              _showProgressBar = state.showProgressBar;
              if (state.result != null) {
                _listOfDineInKot = state.result;
              }
              _errorMessage = state.errorMessage;
              _noOfChairUsed = state.noOfChairUsed;
            }

            return Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    _showProgressBar
                        ? const CircularProgressIndicator()
                        : const SizedBox(),
                    widget.totalNoOfChairs != _noOfChairUsed
                        ? FloatingActionButton.extended(
                            onPressed: () {
                              _tableKotCubit.addKotDialog();
                            },
                            label: const Text("Add Kot"))
                        : const SizedBox()
                  ],
                ),
              ),
              appBar: AppBar(
                title: Text("Kot of ${widget.tableName}"),
              ),
              body: _listOfDineInKot != null
                  ? _listOfDineInKot!.isEmpty
                      ? const Center(
                          child: Text("Empty List"),
                        )
                      : GridView.count(
                          crossAxisCount: width >= 600
                              ? (width > 1200)
                                  ? (width > 1600)
                                      ? 5
                                      : 4
                                  : 3
                              : 2,
                          childAspectRatio: 1,
                          children:
                              List.generate(_listOfDineInKot!.length, (index) {
                            final kotId = _listOfDineInKot![index].kotId;
                            final noOfChairUsed =
                                _listOfDineInKot![index].noOfChairRequired;
                            return Material(
                              elevation: 2,
                              child: Container(
                                decoration:
                                    const BoxDecoration(color: Colors.grey),
                                width: 100,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Kot id:- $kotId"),
                                      Text(noOfChairUsed.toString())
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        )
                  : _showProgressBar
                      ? const SizedBox()
                      : const Center(
                          child: Text("Empty List"),
                        ),
            );
          },
        );
      },
    );
  }
}
