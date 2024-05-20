import 'package:flutter/material.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/widgets/table_food_and_category_display_screen.dart';
import 'package:pos_mini/util/color_constants.dart';

class TableFoodItemDisplayScreen extends StatelessWidget {
  const TableFoodItemDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "Search Food item",
        foregroundColor: Colors.white,
        backgroundColor: deepBlueColour,
        onPressed: () {
          // Todo
        },
        child: const Icon(Icons.search),
      ),
      appBar: AppBar(
        title: const Text("Dine in"),
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 26, 51)),
          useMaterial3: true,
        ),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 236, 102, 56),
                toolbarHeight: 85,
                title: const TabBar(
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.restaurant_menu,
                      ),
                      text: 'Menu',
                    ),
                    Tab(
                      icon: Icon(
                        Icons.shopping_bag,
                      ),
                      text: 'Cart',
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  TableFoodAndCategoryDisplayScreen(),
                  Center(
                    child: Text("Cart"),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
