import 'package:flutter/material.dart';

SizedBox withGoogleButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFFFFF),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/google_logo.png', width: 32, height: 32),
            const SizedBox(width: 10),
            const Text(
              'Sign Up Google',
              style: TextStyle(color: Color(0xFF002A4D)),
            ),
          ],
        ),
      ),
    );
  }