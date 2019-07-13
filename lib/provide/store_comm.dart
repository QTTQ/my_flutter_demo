import 'package:flutter/material.dart';
class CommStore with ChangeNotifier {
  int value =0 ;
  Map userInfo={};
  increment(){
    value++;
    notifyListeners();
  }
}
