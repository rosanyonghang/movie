import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier{
  num _count = 0;

  num get count => _count;

  void incCount(){
    _count = _count + 1;
    notifyListeners();
  }

  void decCount(){
    _count = _count - 1;
    notifyListeners();
  }
}