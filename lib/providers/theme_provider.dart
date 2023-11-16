import 'package:flutter/material.dart';


class ThemeProvider extends ChangeNotifier{

  ThemeData temaActual;


  ThemeProvider({
    required bool isDarkMode
  }):temaActual = (isDarkMode) ? ThemeData.dark(): ThemeData.light();


  setLight(){
      print('setLight');
      temaActual = ThemeData.light();
      notifyListeners();
  }
  
  setDark(){
      print('setLight');
      temaActual = ThemeData.dark();
      notifyListeners();
  }

} 