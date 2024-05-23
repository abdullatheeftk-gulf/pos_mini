import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/area/area_cubit.dart';
import 'package:pos_mini/blocs/add/dine_in/area/build_state/area_build_state.dart';
import 'package:pos_mini/blocs/add/dine_in/area/consumer_state/area_consumer_state.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/add_area/child/add_area_dialog.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/add_area/child/edit_area_dialog.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/show_all_table_under_area/show_all_tables_under_an_area.dart';
import 'package:pos_mini/screens/ui_util/pop_up_menu_button.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class AddAreaScreen extends StatefulWidget {
  const AddAreaScreen({super.key});

  @override
  State<AddAreaScreen> createState() => _AddAreaScreenState();
}

class _AddAreaScreenState extends State<AddAreaScreen> {
  late final AreaCubit _areaCubit;

  String? _errorMessage;
  bool _showProgressBar = false;

  List<DineInArea> _listOfDineInArea = [];

  @override
  void initState() {
    _areaCubit = context.read<AreaCubit>();
    _areaCubit.getAllArea();
    super.initState();
  }

  void _showAddDialog() {
    showDialog(
        context: context,
        builder: (ctx) {
          return const AddAreaDialog();
        });
  }

  void _showEditDialog(DineInArea dineInArea) {
    showDialog(
        context: context,
        builder: (ctx) {
          return EditAreaDialog(
            dineInArea: dineInArea,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AreaCubit, AreaState>(
      listener: (context, state) {
        if (state is AreaConsumerState) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? "Error"),
                duration: const Duration(seconds: 5),
              ),
            );
          }

          if (state.addDialog != null) {
            _showAddDialog();
          }

          if (state.editDialog != null) {
            final dineInArea = state.editDialog?.data as DineInArea;
            _showEditDialog(dineInArea);
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is AreaConsumerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is AreaBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        printWarning("build");
        if (state is AreaBuildState) {
          _showProgressBar = state.showProgressBar;

          _errorMessage = state.errorMessage;

          if (state.result != null) {
            _listOfDineInArea = state.result;
          }
        }
        return Scaffold(
          //Progress button
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              _showProgressBar
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
              FloatingActionButton(
                onPressed: () {
                  _areaCubit.showAddAreaDialog();
                },
                child: const Icon(Icons.add),
              )
            ],
          ),

          //AppBar
          appBar: AppBar(
            title: const Text("Add Area"),
          ),

          // body parts
          body: LayoutBuilder(
            builder: (context, constraints) {
              final screenWidth = constraints.maxWidth;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),

                    // Showing error message
                    _errorMessage != null
                        ? Text(
                            _errorMessage!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          )
                        : const SizedBox(),

                    Expanded(
                      child: GridView.count(
                        crossAxisCount: screenWidth >= 550
                            ? (screenWidth > 900)
                                ? (screenWidth > 1200)
                                    ? (screenWidth > 1600)
                                        ? 7
                                        : 6
                                    : 5
                                : 4
                            : 2,
                        childAspectRatio: 2.2,
                        children: List.generate(
                            _listOfDineInArea.length,
                            (index) => Card(
                                  child: Center(
                                    child: ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            flex: 5,
                                            child: Text(
                                              _listOfDineInArea[index].name,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: PopupMenuButton<
                                                PopUpMenuButton>(
                                              onSelected: (cb) {
                                                if (cb.name ==
                                                    PopUpMenuButton.edit.name) {
                                                  _areaCubit
                                                      .showEditAlertDialog(
                                                          _listOfDineInArea[
                                                              index]);
                                                }
                                                if (cb.name ==
                                                    PopUpMenuButton
                                                        .delete.name) {
                                                  _areaCubit.deleteAnAreaById(
                                                      _listOfDineInArea[index]);
                                                }
                                              },
                                              itemBuilder:
                                                  (BuildContext context) {
                                                return <PopupMenuEntry<
                                                    PopUpMenuButton>>[
                                                  const PopupMenuItem<
                                                      PopUpMenuButton>(
                                                    value: PopUpMenuButton.edit,
                                                    child: Text(
                                                      "Edit",
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                  ),
                                                  const PopupMenuItem<
                                                      PopUpMenuButton>(
                                                    value:
                                                        PopUpMenuButton.delete,
                                                    child: Text(
                                                      "Delete",
                                                      style: TextStyle(
                                                          color: Colors.red),
                                                    ),
                                                  ),
                                                ];
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ShowAllTablesUnderAnArea(
                                                    dineInArea:
                                                        _listOfDineInArea[
                                                            index]),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
