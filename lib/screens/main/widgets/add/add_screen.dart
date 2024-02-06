import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_category_screen/add_category_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/add_product_screen/add_product_screen.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/edit_or_delete_a_product.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/edit_or_delete_a_product/edit_or_delete_main_screen.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBloc, AddState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              final screenWidth = constraints.widthConstraints().maxWidth;
              final double textSize = screenWidth >= 550
                  ? screenWidth >= 900
                      ? 36
                      : 30
                  : 24;
              return Padding(
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
                                "Add A Category",
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
                                    const AddCategoryScreen()));
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
                                "Add A Product",
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
                                    const AddProductScreen(incomingCategory: null,)));
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
                            color: const Color.fromARGB(255, 170, 49, 93),
                            child: Center(
                              child: Text(
                                "Edit/Delete A Product",
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
                                const EditOrDeleteMainScreen(),
                          ),
                        );
                      },
                    ),
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
