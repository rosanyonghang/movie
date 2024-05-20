
import 'package:flutter/material.dart';

// we extend the change notifier class to access notify listeners
class CountProvider extends ChangeNotifier{
  int _count = 0;

  int get count => _count;

  void incCount(){
    _count = _count + 1;
    // notify listeners is responsible for broadcasting the widgets that
    // the variable has been changed
    notifyListeners();
  }

  void decCount(){
    _count = _count - 1;
    notifyListeners();
  }
}