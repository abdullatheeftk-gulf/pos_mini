import 'dart:io';

import 'package:pos_mini/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository{

  Future<String> getBaseUrl() async{
    try {
      final pref = await SharedPreferences.getInstance();
      return pref.getString(Constants.saveBaseUrlToSharedPreferences) ?? _getDefaultBaseUrlForTesting();
    }catch(e){
      return "";
    }
  }

  Future<bool> setBaseUrl(String baseUrl) async{
    try{
      final pref = await SharedPreferences.getInstance();
      return await pref.setString(Constants.saveBaseUrlToSharedPreferences, baseUrl);
    }catch(e){
      print("set Base url error: ${e.toString()}");
      return false;
    }
  }


  String _getDefaultBaseUrlForTesting() {
    if(Platform.isAndroid){
      return "http://10.0.2.2:8080";
    }
    if(Platform.isWindows){
      return "http://localhost:8080";
    }
    return "";
  }

}