

import 'dart:async';


mixin TableKotToTableFoodItem{

  StreamController<int> tableIdController = StreamController();

  StreamController<int> nofChairSelectedController = StreamController();
 

  void setTableIdControler(int tableId){
    tableIdController.add(tableId);
  }

  void setNoOfChairsSelectedController(int noOfChairs){
    nofChairSelectedController.add(noOfChairs);
  }
  
}