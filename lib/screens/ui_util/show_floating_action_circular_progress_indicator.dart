import 'package:flutter/material.dart';


Widget showFloatingCircularProgressIndicator(BuildContext context,bool showProgressBar){
  if(showProgressBar){
    return const CircularProgressIndicator();
  }
  return const SizedBox();

}