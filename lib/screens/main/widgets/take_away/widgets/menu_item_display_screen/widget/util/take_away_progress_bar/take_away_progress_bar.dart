import 'package:flutter/material.dart';


Widget takeAwayProgressBar(BuildContext context,bool showProgressBar){
  if(showProgressBar){
    return const CircularProgressIndicator();
  }
  return const SizedBox();

}
