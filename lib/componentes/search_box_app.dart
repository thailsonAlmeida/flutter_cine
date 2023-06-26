import 'package:flutter/material.dart';

Widget searchBoxApp() {
  return Center(
    child: SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Pesquisar',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: const Color.fromARGB(255, 255, 255, 255),
          fillColor: const Color.fromARGB(122, 105, 106, 114),
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 67, 116, 240)),
          ),
        ),
      ),
    ),
  );
}
