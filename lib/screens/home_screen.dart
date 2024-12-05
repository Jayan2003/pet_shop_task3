import 'package:flutter/material.dart';

import '../models/pet.dart';
import '../widgets/pet_card.dart';
import '../pet_data.dart';
import 'package:pet_shop/models/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Pet> _filteredPets = petList;

  @override
  void initState() {
    super.initState();
  }

  void _onSearch(String query) {
    setState(() {
      _filteredPets = petList.where((pet) =>
      pet.name?.toLowerCase().contains(query.toLowerCase()) ?? false ||
          pet.breed!.toLowerCase().contains(query.toLowerCase()) ?? false)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(backgroundColor: Colors.grey,title: const Text('Pet Market',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),centerTitle: true,),
      body: Column(
        children: [
         CustomSearchBar(
            controller: _searchController,
            onSearch: _onSearch,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredPets.length,
              itemBuilder: (context, index) {
                return PetCard(pet: _filteredPets[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
