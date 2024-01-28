import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _theme = ThemeData.dark();
  ThemeData get theme => _theme;

  void switchTheme(){
    final isDark = _theme == ThemeData.dark();
    if(isDark){
     _theme = ThemeData.light();
    } else{
      _theme = ThemeData.dark();
    }
    notifyListeners();
  }
}