import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moonlight/core/service/auth_service.dart';
import 'package:moonlight/core/ui/main_decoration.dart';

class ProfileScreen extends StatelessWidget {
  String? email;

  final AuthService authService = AuthService();

  ProfileScreen({Key? key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: IconButton(
              onPressed: () async {
                await authService.signOut();
              },
              icon: Icon(Icons.exit_to_app, color: Colors.white),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: mainDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/profile_images/avatar.png',
              ),
            ),
            const SizedBox(height: 20),
            Text(email ?? 'Error! No email'),
          ],
        ),
      ),
    );
  }
}
