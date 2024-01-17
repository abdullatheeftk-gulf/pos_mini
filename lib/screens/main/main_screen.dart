import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/main/main_bloc.dart';
import 'package:pos_mini/screens/main/widgets/drawer_menu/drawer_menu.dart';
import 'package:pos_mini/screens/main/widgets/get_body_widget/get_body_widget.dart';

import '../../util/pair.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _selectedDrawerMenuItem = "Take Away";

  final List<Pair<String, String>> _drawerMenuItems = [
    Pair(first: 'Take Away', second: 'take_away.png'),
    Pair(first: 'Table', second: 'table.png'),
    Pair(first: 'Edit', second: 'edit.png'),
    Pair(first: 'Add Item', second: 'add_product.png'),
    Pair(first: 'Setting', second: 'setting.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints
            .widthConstraints()
            .maxWidth;
        return BlocConsumer<MainBloc, MainState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          listenWhen: (prev,cur){
            //ToDo
            return false;
          },
          buildWhen: (prev,cur){
            //Todo
            if(cur is MainScreenNavigationMenuItemClickedState){
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if(state is MainScreenNavigationMenuItemClickedState){
              _selectedDrawerMenuItem = state.selectedMenuName;
            }
            return Scaffold(
              appBar: AppBar(
                title: Text(_selectedDrawerMenuItem),
              ),
              endDrawer: Drawer(
                width: screenWidth >= 1200 ? 200 : 100,
                child: SafeArea(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return drawerMenu(
                        context: context,
                        menu: _drawerMenuItems[index],
                        selectedMenu: _selectedDrawerMenuItem,
                        screenWidth: screenWidth,
                      );
                    },
                    itemCount: _drawerMenuItems.length,
                  ),
                ),
              ),
              body: getBodyWidget(context: context, selectedMenu: _selectedDrawerMenuItem)
            );
          },
        );
      },
    );
  }
}
