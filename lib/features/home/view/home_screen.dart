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

              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white24, width: 1.0),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Meteor Activity',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle, color: Colors.lightGreen),
                            const SizedBox(width: 10),
                            Text('Good', style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text('Current: Perseids'),
                        Text('Amount: 20-23 MPH'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
