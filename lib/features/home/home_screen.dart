import 'package:flutter/material.dart';
import 'package:login/core/service/auth_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Text('Tuesday, 21')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () async {
              try {
                await _authService.signOut();
              } catch (e) {
                throw 'Something went wrong';
              }
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
    );
  }
}
