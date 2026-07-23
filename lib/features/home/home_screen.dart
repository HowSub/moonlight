import 'package:flutter/material.dart';
import 'package:login/features/home/widgets/data_text.dart';
import 'package:login/features/home/widgets/moon_phases.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> _weeklyImages = [
    'assets/images/weekly_news/image_1.jpg',
    'assets/images/weekly_news/image_2.jpg',
    'assets/images/weekly_news/image_3.jpg',
  ];

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

              const SizedBox(height: 40),

              Container(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(_weeklyImages[index], height: 220),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(width: 20),
                  itemCount: _weeklyImages.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
