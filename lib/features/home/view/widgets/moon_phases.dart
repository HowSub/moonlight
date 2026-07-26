import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moon_phase/moon_phase_name.dart';
import 'package:moon_phase/moon_widget.dart';

ClipRRect moonPhases() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.white12, width: 1.5),
        ),
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
      ),
    ),
  );
}
