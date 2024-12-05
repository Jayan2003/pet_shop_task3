import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSearch;
  final String hintText; // Optional hint text for the search field
  final bool autofocus; // Optional flag to enable autofocusing the search bar

  const CustomSearchBar({
    Key? key,
    required this.controller,
    required this.onSearch,
    this.hintText = 'Search...',
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        controller: controller,
        onChanged: onSearch, // Trigger search on text change
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: const Icon(Icons.search),
        ),
        autofocus: autofocus, // Enable autofocusing if desired
      ),
    );
  }
}