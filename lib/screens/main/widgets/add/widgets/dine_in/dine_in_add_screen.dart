import 'package:flutter/material.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_area/add_area_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/add_table/add_table_screen.dart';

class DineInAddScreen extends StatelessWidget {
  const DineInAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final double textSize = screenWidth >= 550
          ? screenWidth >= 900
              ? 36
              : 30
          : 24;
      return Scaffold(
          appBar: AppBar(
            title: const Text("Add Table & Area"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: GridView.count(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: screenWidth >= 550
                  ? (screenWidth > 900)
                      ? (screenWidth > 1200)
                          ? (screenWidth > 1600)
                              ? 2
                              : 2
                          : 2
                      : 2
                  : 1,
              childAspectRatio: 2,
              children: [
                InkWell(
                  highlightColor: const Color.fromARGB(255, 236, 102, 56),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(255, 236, 102, 56),
                        child: Center(
                          child: Text(
                            "Add Area",
                            style: TextStyle(
                                color: Colors.white, fontSize: textSize),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddAreaScreen()),
                    );
                  },
                ),
                InkWell(
                  highlightColor: const Color.fromARGB(255, 0, 26, 51),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(255, 0, 26, 51),
                        child: Center(
                          child: Text(
                            "Add Table",
                            style: TextStyle(
                                color: Colors.white, fontSize: textSize),
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AddTableScreen(dineInArea: null)),
                    );
                  },
                ),
              ],
            ),
          ));
    });
  }
}
