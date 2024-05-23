import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_cart_screen.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/widgets/table_food_and_category_display_screen.dart';
import 'package:pos_mini/util/color_constants.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class TableFoodItemDisplayScreen extends StatefulWidget {
  const TableFoodItemDisplayScreen({super.key});

  @override
  State<TableFoodItemDisplayScreen> createState() => _TableFoodItemDisplayScreenState();
}



class _TableFoodItemDisplayScreenState extends State<TableFoodItemDisplayScreen> {

@override
  void initState() {
    printDebug("init");
    super.initState();
  }

  @override
  void dispose() {
   // context.read<TableFoodSelectionCubit>().resetCartList();
    printDebug("dispose");
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    printDebug("didChangeDependencies");
    if(mounted){
      context.read<TableFoodSelectionCubit>().resetCartList();
    }
    super.didChangeDependencies();
  }






  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.widthConstraints().maxWidth;
        return Scaffold(

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
                  title: TabBar(
                    labelColor: Colors.white,
                    tabs: [
                      const Tab(
                        icon: Icon(
                          Icons.restaurant_menu,
                        ),
                        text: 'Menu',
                      ),
                      Badge(
                        offset: const Offset(6, -2),
                        backgroundColor: deepBlueColour,
                        label: BlocBuilder<TableFoodSelectionCubit,
                            TableFoodSelectionState>(
                          buildWhen: (prev, cur) {
                            if (cur is TableCartFoodItemCounterState) {
                              return true;
                            }
                            return false;
                          },
                          builder: (context, state) {
                            int count = 0;
                            if (state is TableCartFoodItemCounterState) {
                              count = state.count;
                            }
                            return Text("$count");
                          },
                        ),
                        child: const Tab(
                          icon: Icon(
                            Icons.shopping_bag,
                          ),
                          text: 'Cart',
                        ),
                      ),
                    ],
                  ),
                ),
                body: const TabBarView(
                  children: [
                    TableFoodAndCategoryDisplayScreen(),
                    TableCartScreen()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
