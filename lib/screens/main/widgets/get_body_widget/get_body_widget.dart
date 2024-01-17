import 'package:flutter/material.dart';
import 'package:pos_mini/screens/main/widgets/take_away/take_away_screen.dart';

Widget getBodyWidget({
  required BuildContext context,
  required String selectedMenu,
}) {
  switch(selectedMenu){
    case "Take Away":{
      return const TakeAwayScreen();
    }
    default:{
      return Center(
        child: Text(selectedMenu),
      );
    }
  }
}
