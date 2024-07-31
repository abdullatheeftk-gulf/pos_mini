import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/models/kot_classes/table_with_chair/table_with_chair.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_build_state/add_new_kot_build_State.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_listener_state/add_new_kot_listener_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/widgets/add_new_kot_area_display.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/widgets/add_new_kot_table_display.dart';
import 'package:pos_mini/util/color_constants.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class AddNewKotScreen extends StatefulWidget {
  const AddNewKotScreen({super.key});

  @override
  State<AddNewKotScreen> createState() => _AddNewKotScreenState();
}

class _AddNewKotScreenState extends State<AddNewKotScreen> {
  @override
  void initState() {
    context.read<AddNewKotCubit>().getAllAreaAndTables();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<AddNewKotCubit>().clearUnwantedItems();

    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNewKotCubit, AddNewKotState>(
      listenWhen: (prev, cur) {
        if (cur is AddNewKotListenerState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is AddNewKotListenerState) {
          // Show Snackbar
          if (state.errorMessage != null) {
            final errorMessage =
                state.errorMessage ?? "There have some problem";
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 5),
              ),
            );
          }

          // Show dialog
          if (state.showSelectTableDialog != null) {
            final dineInTable = state.showSelectTableDialog!.dineInTable;
            _showDialogToSelectTable(dineInTable);
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Add New Kot"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            BlocBuilder<AddNewKotCubit, AddNewKotState>(
              buildWhen: (prev, cur) {
                if (cur is AddNewKotProgressBarState) {
                  return true;
                }
                return false;
              },
              builder: (context, state) {
                if (state is AddNewKotProgressBarState) {
                  final showProgressBar = state.showProgressBar;

                  if (showProgressBar) {
                    return const CircularProgressIndicator();
                  }
                  return const SizedBox();
                }
                return const SizedBox();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton.extended(
                backgroundColor: deepBlueColour,
                foregroundColor: Colors.white,
                onPressed: () {
                  // Todo
                },
                label: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Continue"), SizedBox(width: 8,), Icon(Icons.arrow_forward_ios)],
                ),
              ),
            )
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final screenWidth = constraints.maxWidth;
            final areaDisplayWidth = _getAreaDisplay(screenWidth);

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Area Display
                SizedBox(
                  width: areaDisplayWidth,
                  child: const Center(
                    child: AddNewKotAreaDisplay(),
                  ),
                ),

                // Table Display
                const Expanded(child: AddNewKotTableDisplay()),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showDialogToSelectTable(DineInTable dineInTable) {
    showDialog(
      context: context,
      builder: (context) => ShowDialogToSelectTable(dineInTable: dineInTable),
    );
  }
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

class ShowDialogToSelectTable extends StatefulWidget {
  final DineInTable dineInTable;

  const ShowDialogToSelectTable({super.key, required this.dineInTable});

  @override
  State<ShowDialogToSelectTable> createState() =>
      _ShowDialogToSelectTableState();
}

class _ShowDialogToSelectTableState extends State<ShowDialogToSelectTable> {
  int _selectedSeats = 1;

  @override
  Widget build(BuildContext context) {
    // Calculate available seats
    final availableSeats =
        widget.dineInTable.noOfSeats - widget.dineInTable.noOfSeatsOccupied;

    return AlertDialog(
      title: Text(
        widget.dineInTable.name,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            widget.dineInTable.image,
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Available Seats :- $availableSeats",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          DropdownButtonFormField<int>(
            decoration: const InputDecoration(
                label: Text("Select required seats"),
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                ),
            value: _selectedSeats,
            items: List.generate(
              availableSeats,
              (index) {
                final seatNumber = index + 1;
                return DropdownMenuItem<int>(
                  value: seatNumber,
                  child: Text("${index + 1}"),
                );
              },
            ),
            onChanged: (value) {
              setState(
                () {
                  _selectedSeats = value!;
                },
              );
            },
          ),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () {
              final tableWithChair = TableWithChair(
                tableId: widget.dineInTable.id,
                tableName: widget.dineInTable.name,
                noOfChairRequired: _selectedSeats,
              );
              context
                  .read<AddNewKotCubit>()
                  .onSelectTableSeatsClicked(tableWithChair);

              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: deepBlueColour,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 32)),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }
}
