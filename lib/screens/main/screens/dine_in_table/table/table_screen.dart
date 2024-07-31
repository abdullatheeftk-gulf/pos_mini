import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/add_new_kot_screen.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/area_build_state/table_build_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/listener_state/table_listener_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/table_screen_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/widgets/area_display.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/widgets/table_display/table_display.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/widgets/table_kot_display.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_kot/table_kot_screen.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  bool _showProgressBar = false;
  String? _errorMessage;

  int _selectedAreaId = -1;

  // Build
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        return BlocConsumer<TableScreenCubit, TableScreenState>(
          listener: (context, state) {
            if (state is TableListenerState) {
              // Showing snackbar
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
                final tableId = state.navigate!.tableId;
                final tableName = state.navigate!.tableName;
                final noOfSeats = state.navigate!.totalNoOfChairs;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TableKotScreen(
                      tableId: tableId,
                      tableName: tableName,
                      totalNoOfChairs: noOfSeats,
                    ),
                  ),
                );
              }
            }
          },
          listenWhen: (prev, cur) {
            if (cur is TableListenerState) {
              return true;
            }
            return false;
          },
          buildWhen: (prev, cur) {
            if (cur is TableBuildState || cur is TableSelectedAreaState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is TableBuildState) {
              _errorMessage = state.errorMessage;
              _showProgressBar = state.showProgressBar;
            }

            if (state is TableSelectedAreaState) {
              _selectedAreaId = state.selectedAreaId;
            }

            return Scaffold(
              // Floating Action Button
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  _showProgressBar
                      ? const CircularProgressIndicator()
                      : const SizedBox(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const AddNewKotScreen(),
                          ),
                        );
                      },
                      label: const Text("Add New Kot"),
                    ),
                  ),
                ],
              ),

              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,

              // Body
              body: Row(
                children: [
                  SizedBox(
                    width: _getAreaDisplay(screenWidth),
                    child: const AreaDisplay(),
                  ),

                  // Table and kot display
                  TableAndKotDisplay(
                    screenWidth: screenWidth,
                    areaId: _selectedAreaId,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  double _getAreaDisplay(double screenWidth) {
    if (screenWidth <= 800) {
      return 40;
    }
    if (screenWidth <= 1200) {
      return 80;
    }
    if (screenWidth <= 1600) {
      return 120;
    }
    return 160;
  }
}

class TableAndKotDisplay extends StatelessWidget {
  final double screenWidth;

  final int areaId;

  const TableAndKotDisplay({
    super.key,
    required this.screenWidth,
    required this.areaId,
  });

  @override
  Widget build(BuildContext context) {
    if (screenWidth > 800) {
      return Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: TableKotDisplay(
                  areaId: areaId,
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: TableDisplay(),
              ),
            ),
          ],
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final maxWidth = constraints.widthConstraints().maxWidth;
        printError(maxWidth);
        printGreen(width);
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TableKotDisplay(
              areaId: areaId,
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                  width: screenWidth - 40, child: const TableDisplay()),
            ),
          ],
        );
      },
    );
  }
}
