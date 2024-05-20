import 'package:pos_mini/repository/shared_data_repository/show_all_table_under_an_area_mixin.dart';
import 'package:pos_mini/repository/shared_data_repository/table_kot_to_table_food_item.dart';

class SharedDataRepository with ShowAllTableUnderAnAreaMixin,TableKotToTableFoodItem{
  static String adminPassword = "";

  String getAdminPassword(){
    return adminPassword;
  }

  void setAdminPassword(String value){
    adminPassword = value;
  }
}