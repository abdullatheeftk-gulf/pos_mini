
import 'dart:async';

import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';

mixin ShowAllTableUnderAnAreaMixin{
  StreamController<List<DineInTable>> dineInTableController = StreamController();

  void setDineTableList(List<DineInTable> list){
    dineInTableController.add(list);
  }
}