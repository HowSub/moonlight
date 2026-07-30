import 'dart:ui';

import 'package:flutter/material.dart';

ClipRRect meteorActivity() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.white24, width: 1.0),
        ),
        child: Column(
          children: [
            const Text('Meteor Activity', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, color: Colors.lightGreen),
                const SizedBox(width: 10),
                Text('Good', style: TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 30),
            Text('Current: Perseids'),
            Text('Amount: 20-23 MPH'),
          ],
        ),
      ),
    ),
  );
}
