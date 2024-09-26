import 'package:books_app/constatnts.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(Icons.search),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder()),
    );
  }
  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: whiteColor));
  }
}
