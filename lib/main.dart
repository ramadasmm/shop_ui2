import 'package:flutter/material.dart';
import 'package:shop_ui/Screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.amber[50],
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.amber[50],
            elevation: 0,
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
            titleSpacing: 1),
      ),
      home: const MainScreen(),
    );
  }
}
