import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/features/home/home_screen.dart';
import 'package:login/features/register/register_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        final Widget currentScreen;

        if (snapshot.hasData) {
          currentScreen = HomeScreen(key: ValueKey('home'));
        } else {
          currentScreen = const RegisterScreen(key: ValueKey('register'));
        }

        return AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: currentScreen,
        );
      },
    );
  }
}
