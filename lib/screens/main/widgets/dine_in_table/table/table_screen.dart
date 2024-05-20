import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/cubit/area_build_state/table_build_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/cubit/listener_state/table_listener_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/cubit/table_screen_cubit.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/widgets/area_display.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/widgets/table_display/table_display.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/table_kot_screen.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  bool _showProgressBar = false;
  String? _errorMessage;
  

  // Build
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.widthConstraints().maxWidth;

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
            if (cur is TableBuildState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is TableBuildState) {
              _errorMessage = state.errorMessage;
              _showProgressBar = state.showProgressBar;
            }

            return Scaffold(
              floatingActionButton: _showProgressBar
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              body: Row(
                children: [
                  SizedBox(
                    width: screenWidth > 800
                        ? (screenWidth > 1200)
                            ? (screenWidth > 1600)
                                ? 160
                                : 120
                            : 80
                        : 40,
                    child: const AreaDisplay(),
                  ),
                  const Expanded(child: TadbleDisplay()),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
