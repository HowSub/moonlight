import 'package:flutter/material.dart';
import 'package:moon_phase/moon_phase_name.dart';
import 'package:moon_phase/moon_widget.dart';

Container moonPhases() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
    decoration: BoxDecoration(color: Color(0xFF000B4B)),
    child: MoonWidget.image(
      date: DateTime.now(),
      backgroundImageAsset: 'assets/images/moon_phases/full_moon.png',
      size: 200,
      shadowRatio: 1.0,
      earthshineColor: const Color(0x9B000000),
      labelPosition: MoonLabelPosition.bottom,
      labelStyle: TextStyle(fontSize: 20, fontWeight: .w600),
      labelSpacing: 30.0,
    ),
  );
}
