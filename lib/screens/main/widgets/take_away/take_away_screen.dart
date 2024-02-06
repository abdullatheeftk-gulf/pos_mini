import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/cart_display_screen/cart_display_screen.dart';
import 'package:pos_mini/screens/main/widgets/take_away/widgets/menu_item_display_screen/menu_item_display_screen.dart';
import 'package:pos_mini/screens/ui_util/show_floating_action_circular_progress_indicator.dart';


class TakeAwayScreen extends StatefulWidget {
  const TakeAwayScreen({super.key});

  @override
  State<TakeAwayScreen> createState() => _TakeAwayScreenState();
}

class _TakeAwayScreenState extends State<TakeAwayScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 26, 51)),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: BlocListener<TakeAwayBloc, TakeAwayState>(
          listenWhen: (prev, cur) {
            if (cur is TakeAwayApiFetchingFailedState) {
              return true;
            }
            return false;
          },
          listener: (context, state) {
            if (state is TakeAwayApiFetchingFailedState) {
              final apiError = state.apiError;
              final errorMessage =
                  "${apiError.errorCode}, ${apiError.errorMessage}, ${apiError.errorData}";
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errorMessage),
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          },
          child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: BlocBuilder<TakeAwayBloc, TakeAwayState>(
              builder: (context, state) {
                bool showProgressBar = false;
                if (state is TakeAwayScreenShowCircularProgressIndicatorState) {
                  showProgressBar = true;
                } else {
                  showProgressBar = false;
                }
                return showFloatingCircularProgressIndicator(context, showProgressBar);
              },
            ),
            appBar: AppBar(
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
                  Tab(
                    icon: Badge(
                      offset: const Offset(8, -8),
                      backgroundColor: const Color.fromARGB(255, 0, 26, 51) ,
                      label: BlocBuilder<TakeAwayBloc, TakeAwayState>(
                        buildWhen: (prev, cur) {
                          if (cur is TakeAwayShowBadgeCountState) {
                            return true;
                          }
                          return false;
                        },
                        builder: (context, state) {
                          int count = 0;
                          if (state is TakeAwayShowBadgeCountState) {
                            count = state.count;
                          }
                          return Text("$count");
                        },
                      ),
                      child: const Icon(Icons.shopping_bag),
                    ),
                    text: 'Cart',
                  ),
                ],
              ),
              backgroundColor: const Color.fromARGB(255, 236, 102, 56),
            ),
            body: const TabBarView(
              children: [
                MenuItemDisplayScreen(),
                CartDisplayScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
