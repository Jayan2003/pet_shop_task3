import 'package:pet_shop/models/pet.dart';

import 'getImageUrl.dart';  // Import the function

List<Pet> petList = [
  Pet(
    name: 'Dog',
    breed: 'Golden Retriever',
    age: 5,
    imageUrl: getImageUrl('https://drive.google.com/file/d/1SVXNgYjWidATdPpPfswlWtS31DnhjB-2/view?usp=sharing'),
  ),
  Pet(
    name: 'Dog',
    breed: 'Cardigan',
    age: 2,
    imageUrl: getImageUrl('https://drive.google.com/file/d/152WsHjSIgQUy0gS_WQEo3mWOSMK8v1kM/view?usp=share_link'),
  ),
  Pet(
    name: 'Cat',
    breed: 'Street Cat',
    age: 9,
    imageUrl: getImageUrl('https://drive.google.com/file/d/1SL7ZirhhuTpgk7wRe_t0vB_3xD9iqCGm/view?usp=share_link'),
  ),
  Pet(
    name: 'Cat',
    breed: 'Kitten Cat',
    age: 2,
    imageUrl: getImageUrl('https://drive.google.com/file/d/1qQILdlJ3gtm_0VBzmSoqgTbisVZ-7kr9/view?usp=share_link'),
  ),
  Pet(
    name: 'Rabbit',
    breed: 'Gray Rabbit',
    age: 2,
    imageUrl: getImageUrl('https://drive.google.com/file/d/1lxI-yXMPIp2nz2MLc7duJ5Sw6lrA-AsJ/view?usp=share_link'),
  ),
];
