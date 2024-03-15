import 'package:animal_app/model/animal_model.dart';
import 'package:flutter/material.dart';

class AnimalListScreen extends StatelessWidget {
  final List<String> animals = [
    'Dog',
    'Cat',
    'Sparrow',
    'Pigeon',
    'Octopus',
    'Rhino',
    'Leopard',
    'Lion',
    'Jaguar'
  ];

  AnimalListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal List'),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          final animalName = animals[index];
          return Card(
            child: ListTile(
              title: Text(animalName),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/animalDetails',
                  arguments: AnimalDetailsArguments(animalName),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
