import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moonlight/features/auth/login/login.dart';
import 'package:moonlight/features/auth/register/register.dart';
import 'package:moonlight/features/home/home.dart';

class RouterSettings extends ChangeNotifier {
  late final StreamSubscription<User?> _subscription;

  RouterSettings() {
    _subscription = FirebaseAuth.instance.authStateChanges().listen((user) {notifyListeners();});
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

final RouterSettings _routerSettings = RouterSettings();

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  refreshListenable: _routerSettings,
  redirect: (context, state) {
    final bool loggedIn = FirebaseAuth.instance.currentUser != null;
    final bool isAuthScreen = state.matchedLocation == '/login' || state.matchedLocation == '/register';

    if(!loggedIn && !isAuthScreen) {
      return '/login';
    }
    if(loggedIn && isAuthScreen) {
      return '/';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/', builder: (context, state) => HomeScreen()),
  ],
);
