import 'package:flutter/material.dart';
import 'package:login/features/home/widgets/data_text.dart';
import 'package:login/features/home/widgets/moon_phases.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: dateText(),
        leadingWidth: 200,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle, size: 40),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF000e5e), Color(0xFF141C48), Color(0xFF485A6E)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),

              moonPhases(),

              const SizedBox(height: 20),

              Text('Weekly news', style: TextStyle(fontSize: 20)),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
