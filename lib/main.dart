import 'package:flutter/material.dart';
import 'package:flutter_widgets_app/pages/container_screen.dart';
import 'package:flutter_widgets_app/pages/home_screen.dart';
import 'package:flutter_widgets_app/routes/routes.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: RouterApp.routes
    );
  }
}
