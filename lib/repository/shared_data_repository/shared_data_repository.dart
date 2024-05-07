import 'package:pos_mini/repository/shared_data_repository/show_all_table_under_an_area_mixin.dart';

class SharedDataRepository with ShowAllTableUnderAnAreaMixin{
  static String adminPassword = "";

  String getAdminPassword(){
    return adminPassword;
  }

  void setAdminPassword(String value){
    adminPassword = value;
  }
}