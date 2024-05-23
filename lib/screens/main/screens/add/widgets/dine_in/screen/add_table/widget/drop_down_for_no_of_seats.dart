import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/util/new_pair/new_pair.dart';


class DropDownForNoOfSeats extends StatefulWidget {
  final DineInTable? dineInTable;
  const DropDownForNoOfSeats({super.key, required this.dineInTable});

  @override
  State<DropDownForNoOfSeats> createState() => _DropDownForNoOfSeatsState();
}

class _DropDownForNoOfSeatsState extends State<DropDownForNoOfSeats> {
  late final AddTableCubit _addTableCubit;

  NewPair<String, int> _dropDownValue =
      const NewPair(first: "assets/images/T4.jpg", second: 4);

  final List<NewPair<String, int>> _listOfTablesWithSeats = [
    const NewPair(first: "assets/images/T2.jpg", second: 2),
    const NewPair(first: "assets/images/RT2.jpg", second: 2),
    const NewPair(first: "assets/images/T4.jpg", second: 4),
    const NewPair(first: "assets/images/RT4.jpg", second: 4),
    const NewPair(first: "assets/images/T6.jpg", second: 6),
    const NewPair(first: "assets/images/RT6.jpg", second: 6),
    const NewPair(first: "assets/images/T8.jpg", second: 8),
    const NewPair(first: "assets/images/RT8.jpg", second: 8),
    const NewPair(first: "assets/images/T10.jpg", second: 10),
    const NewPair(first: "assets/images/RT10.jpg", second: 10),
    const NewPair(first: "assets/images/T12.jpg", second: 12),
  ];

  @override
  void initState() {
    _addTableCubit = context.read<AddTableCubit>();

    if(widget.dineInTable!=null){
      final dT = widget.dineInTable!;
      final pair = NewPair(first: dT.image, second: dT.noOfSeats);
      _dropDownValue = pair;
    }
    

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.maxFinite,
        child: DropdownButtonFormField<NewPair<String, int>>(
          decoration: const InputDecoration(
            label: Text("No Of seats"),
            border: OutlineInputBorder(),
          ),
          value: _dropDownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 16,
          elevation: 6,
          style: const TextStyle(color: Colors.deepPurple),
          items: _listOfTablesWithSeats
              .map(
                (e) => DropdownMenuItem<NewPair<String, int>>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${e.second} seats",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          e.first,
                          width: 100,
                          height: 100,
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              _dropDownValue = value!;
              _addTableCubit.setNoOfSeatsSelected(value);
            });
            /*setState(() {
              _dropDownValue = value!;
              _addTableCubit.setNoOfSeatsSelected(value);
            });*/
          },
        ),
      ),
    );
  }
}
