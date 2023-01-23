import 'package:flutter/material.dart';
import 'package:flutter_multiple_ui/ui/Ui_one/ui_one_home_page.dart';
import 'package:flutter_multiple_ui/ui/main_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainHomePage(),
    );
  }
}