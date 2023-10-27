import 'package:flutter/material.dart';
import 'screens/screens.dart';


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
      initialRoute: 'listview',
      routes: {
        'home':(context) => const HomeScreen(),
        'counter':(context) => const CounterPage(),
        'listview':(context) => const ListViewScreen(),
        'listview1':(context) => const ListBuilderScreen(),
        'listview2':(context) => ListBuilderScreen2(),
        'flexbox': (context) => const FlexScreenColumn(),
        'animated': (context) => const ContainerPage(),
      },
    );
  }
}


