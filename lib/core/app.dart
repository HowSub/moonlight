import 'package:flutter/material.dart';
import 'package:login/core/theme.dart';
import 'package:login/features/register/register_screen.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: darkTheme, home: RegisterScreen());
  }
}
