import 'package:flutter/material.dart';
import 'package:flutter_repo_guide/screens/counter_page.dart';
import 'package:flutter_repo_guide/screens/design_screen.dart';
import 'package:flutter_repo_guide/screens/flex_screen_direction.dart';
import 'package:flutter_repo_guide/screens/flex_screen_row.dart';
import 'package:flutter_repo_guide/widgets/card_image_widget.dart';
import 'screens/card_sample_page.dart';
import 'screens/flex_screen_column.dart';
import 'screens/home_screen.dart';
import 'screens/listview_screen.dart';
import 'screens/tmp_listview_builder.dart';
import 'screens/tmp_listview_builder2.dart';

void main() {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',     
      theme: ThemeData.light().copyWith(

      ),
      debugShowCheckedModeBanner: false,
      home: CardSampleScreen(),
    );
  }
}


