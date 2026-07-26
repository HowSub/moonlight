import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  textTheme: ThemeData.dark().textTheme.apply(
    fontFamily: 'StackSans',
    bodyColor: Color(0xFFFFFFFF),
    displayColor: Color(0xFFFFFFFF),
  ),
);
