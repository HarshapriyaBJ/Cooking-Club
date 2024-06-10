import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Club',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightGreen,
          ),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ))),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
