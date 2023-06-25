import 'package:flutter/material.dart';

InputDecoration getAuthenticationInputDecoration(String label) {
  if (label == 'Email') {
    return InputDecoration(
      hintText: label,
      hintStyle: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      prefixIcon: const Icon(Icons.email),
      prefixIconColor: const Color.fromARGB(255, 255, 255, 255),
      fillColor: const Color.fromARGB(122, 105, 106, 114),
      filled: true,
      contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color.fromARGB(255, 67, 116, 240)),
      ),
    );
  }

  return InputDecoration(
    hintText: label,
    hintStyle: const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    prefixIcon: const Icon(Icons.lock),
    prefixIconColor: const Color.fromARGB(255, 255, 255, 255),
    fillColor: const Color.fromARGB(122, 105, 106, 114),
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color.fromARGB(255, 67, 116, 240)),
    ),
  );
}
