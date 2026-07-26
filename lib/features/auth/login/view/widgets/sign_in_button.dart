import 'package:flutter/material.dart';
import 'package:login/core/service/auth_service.dart';

final AuthService _authService = AuthService();
final _formKey = GlobalKey<FormState>();

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

SizedBox signInButton() {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          String email = _emailController.text.trim().toLowerCase();
          String password = _passwordController.text.trim().toLowerCase();

          try {
            await _authService.signIn(email, password);
          } catch (e) {
            SnackBar(content: Text(e.toString()));
          }
        }
      },
      child: const Text('SignIn', style: TextStyle(color: Color(0xFF002A4D))),
    ),
  );
}
