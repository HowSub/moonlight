import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moonlight/core/ui/main_decoration.dart';
import 'package:moonlight/features/home/view/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HomeAppbar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: mainDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 120),

              moonPhases(),

              const SizedBox(height: 40),

              weeklyNews(),

              const SizedBox(height: 40),

              const Text('Weather Forecast', style: TextStyle(fontSize: 20)),

              const SizedBox(height: 20),

              weeklyWeatherForecast(),

              const SizedBox(height: 40),

              meteorActivity(),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
