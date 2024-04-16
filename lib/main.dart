
import 'package:flutter/material.dart';
import 'package:sos_mujer/screen/home_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'S.O.S. MUJER',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(60, 22, 66, 1),
      ),
      home: const HomeScreen(),
    );
  }
}

