import 'package:flutter/material.dart';

TextField emailInput() {
    return TextField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'example@gmail.com',
        label: Text('Email', style: TextStyle(color: Colors.white)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.email, color: Colors.white),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintStyle: TextStyle(color: const Color.fromARGB(121, 255, 255, 255)),
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