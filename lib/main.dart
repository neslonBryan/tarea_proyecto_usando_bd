import 'package:flutter/material.dart';
import 'package:tarea_proyecto_usando_bd/pages/home_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alumnos App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
