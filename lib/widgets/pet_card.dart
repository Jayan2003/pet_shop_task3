import 'package:flutter/material.dart';

import '../models/pet.dart';
String getImageUrl(String image) {
  String pattern = "id=([^&]+)";
  RegExp regex = RegExp(pattern);
  Match? match = regex.firstMatch(image);

  if (match != null) {
    String fileId = match.group(1)!;
    return "https://drive.google.com/uc?export=view&id=$fileId";
  } else {
    return ""; // Or handle the error case as needed
  }
}
class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({Key? key, required this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.network(
              pet.imageUrl,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(pet.name),
        subtitle: Text('${pet.breed}, ${pet.age} years old'),
      ),
    );
  }
}