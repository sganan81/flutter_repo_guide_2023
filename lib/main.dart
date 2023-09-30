import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/listview_screen.dart';

void main() {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',     
      theme: ThemeData.dark().copyWith(

      ),
      debugShowCheckedModeBanner: false,
      home: const ListViewScreen(),
    );
  }
}


