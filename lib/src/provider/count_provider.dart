import 'package:flutter/cupertino.dart';

class CountProvider extends ChangeNotifier{
  int _count = 0;
  int get count => _count;

  add(){
    _count++;
    notifyListeners(); //변경되었다는 신호를 보내줘야 실횅된다.
  }

  remove(){
    _count--;
    notifyListeners();
  }
}