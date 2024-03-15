import 'package:animal_app/view/animal_details_screen.dart';
import 'package:animal_app/view/animal_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AnimalListScreen(),
        '/animalDetails': (context) => AnimalDetailsScreen(),
      },
    );
  }
}
