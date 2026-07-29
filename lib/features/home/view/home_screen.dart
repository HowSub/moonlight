import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:moonlight/core/ui/main_decoration.dart';
import 'package:moonlight/features/home/view/widgets/weekly_weather.dart';
import 'package:moonlight/features/home/view/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  void initState() {
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: homeAppBar,
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

              Text('Weather Forecast', style: TextStyle(fontSize: 20)),

              const SizedBox(height: 20),

              weeklyWeatherForecast(),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
