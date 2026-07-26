import 'package:flutter/material.dart';

TextFormField emailField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value == null ||
          value.isEmpty ||
          !value.contains('@') ||
          !value.contains('.')) {
        return 'Invalid email';
      }
      return null;
    },
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: 'example@gmail.com',
      label: Text('Email', style: TextStyle(color: Colors.white)),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: Icon(Icons.email, color: Colors.white),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      hintStyle: TextStyle(color: const Color.fromARGB(121, 255, 255, 255)),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: const Color(0xFFFD5E52)),
        borderRadius: BorderRadius.circular(20.0),
      ),
      errorStyle: TextStyle(color: Color(0xFFFD5E52)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}
