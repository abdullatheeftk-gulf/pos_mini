import 'package:flutter/material.dart';
import 'package:pos_mini/screens/main/screens/add/add_screen.dart';
import 'package:pos_mini/screens/main/screens/settings/settings_main_screen.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/table_screen.dart';
import 'package:pos_mini/screens/main/screens/take_away/take_away_screen.dart';

Widget getBodyWidget({
  required BuildContext context,
  required String selectedMenu,
  required bool isAdminLogin,
}) {
  switch(selectedMenu){
    case "Take Away":{
      return const TakeAwayScreen();
    }
    case "Add":{
      return const AddScreen();
    }
    case "Settings":{
      return  SettingsMainScreen(isAdminLogin: isAdminLogin,);
    }
    case "Table":{
      return const  TableScreen();
    }
    default:{
      return Center(
        child: Text(selectedMenu),
      );
    }
  }
}
