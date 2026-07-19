import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

RichText richTextLink() {
  return RichText(
    text: TextSpan(
      style: TextStyle(color: Colors.white, fontWeight: .w600),
      children: [
        TextSpan(text: 'Already have an account? '),
        TextSpan(
          style: TextStyle(color: Colors.blue),
          text: 'Sign In',
          recognizer: TapGestureRecognizer()..onTap = () {},
        ),
      ],
    ),
  );
}
