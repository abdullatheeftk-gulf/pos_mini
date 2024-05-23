import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/add_table/add_table_screen.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/show_all_table_under_area/bloc/build_state/show_all_table_build_state.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/show_all_table_under_area/bloc/consumer_state/show_all_table_consumer_state.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/show_all_table_under_area/bloc/show_all_table_under_an_area_cubit.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/show_all_table_under_area/widget/show_all_table_card.dart';


import '../../../../../../../../models/dine_in/table/dine_in_table.dart';

class ShowAllTablesUnderAnArea extends StatefulWidget {
  final DineInArea dineInArea;

  const ShowAllTablesUnderAnArea({super.key, required this.dineInArea});

  @override
  State<ShowAllTablesUnderAnArea> createState() =>
      _ShowAllTablesUnderAnAreaState();
}

class _ShowAllTablesUnderAnAreaState extends State<ShowAllTablesUnderAnArea> {
  // late final AddTableCubit _addTableCubit;
  late final ShowAllTableUnderAnAreaCubit _showAllTableUnderAnAreaCubit;

  List<DineInTable>? _listOfDineInTable;
  String? _errorMessage;
  bool _showProgressBar = false;

  @override
  void initState() {
    _showAllTableUnderAnAreaCubit =
        context.read<ShowAllTableUnderAnAreaCubit>();
    _showAllTableUnderAnAreaCubit.getAllTablesUnderAnArea(widget.dineInArea.id);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints.maxWidth;
        return BlocConsumer<ShowAllTableUnderAnAreaCubit,
            ShowAllTableUnderAnAreaState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          listenWhen: (prev, cur) {
            if (cur is ShowAllTableConsumerState) {
              return true;
            }
            return false;
          },
          buildWhen: (prev, cur) {
            if (cur is ShowAllTableBuildState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is ShowAllTableBuildState) {
              _errorMessage = state.errorMessage;
              _listOfDineInTable = state.result;
              _showProgressBar = state.showProgressBar;
            }

            return Scaffold(
              floatingActionButton: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    _showProgressBar
                        ? const CircularProgressIndicator()
                        : const SizedBox(),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddTableScreen(dineInArea: widget.dineInArea)));
                      },
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              appBar: AppBar(
                title: Text("Tables under ${widget.dineInArea.name}"),
              ),
              body: Padding(
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

                    // Show all dine in table
                    _listOfDineInTable != null
                        ? Expanded(
                            child: GridView.count(
                              crossAxisCount: screenWidth >= 550
                                  ? (screenWidth > 900)
                                      ? (screenWidth > 1200)
                                          ? (screenWidth > 1600)
                                              ? 5
                                              : 4
                                          : 3
                                      : 2
                                  : 1,
                              childAspectRatio: 4,
                              children: List.generate(
                                _listOfDineInTable!.length,
                                (index) => ShowAllTableCard(
                                  dineInTable:
                                      _listOfDineInTable!.elementAt(index),
                                  dineInArea: widget.dineInArea,
                                ),
                              ),
                            ),
                          )
                        : const Center(
                            child: Text("No Tables"),
                          )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
