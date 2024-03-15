import 'package:animal_app/model/animal_model.dart';
import 'package:flutter/material.dart';

class AnimalDetailsScreen extends StatelessWidget {
  const AnimalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimalDetailsArguments args = ModalRoute.of(context)!.settings.arguments as AnimalDetailsArguments;
    final animalName = args.animalName;

    // Hardcoded information about animals
    final animalDetails = {
      'Dog': 'Dogs are domesticated mammals, not natural wild animals.',
      'Cat': 'Cats are often valued by humans for companionship and for their ability to hunt vermin.',
      'Sparrow': 'Sparrows are small, plump, brown and grey birds.',
      'Pigeon': 'Pigeons and doves constitute the bird family Columbidae.',
      'Octopus': 'The octopus is a soft-bodied, eight-limbed mollusc.',
      'Rhino': 'Rhinos are known for their horns, which have been used for millennia for various purposes.',
      'Leopard': 'Leopards are large and powerful cats.',
      'Lion': 'Lions are majestic animals and are often called the "king of the jungle."',
      'Jaguar': 'Jaguars are large cats native to the Americas.'
    };

    final animalDescription = animalDetails[animalName] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: $animalName',
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Description: $animalDescription',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
