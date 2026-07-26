import 'package:flutter/material.dart';

TextFormField repeatPasswordField(
  TextEditingController controller,
  TextEditingController password,
) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Repeat password';
      }
      if (value != password.text) {
        return "Passwords don't match";
      }
    },
    controller: controller,
    obscureText: true,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      hintText: 'Repeat password...',
      label: Text('Repeat Password', style: TextStyle(color: Colors.white)),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: Icon(Icons.lock, color: Colors.white),
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
