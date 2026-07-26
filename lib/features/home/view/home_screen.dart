import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login/core/ui/main_decoration.dart';
import 'package:login/features/home/model/weekly_model.dart';
import 'package:login/features/home/view/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

    final List<WeeklyModel> weeklyNews = [
    WeeklyModel(
      imagePath: 'assets/images/weekly_news/image_1.jpg',
      title: 'The best places for observation',
    ),
    WeeklyModel(
      imagePath: 'assets/images/weekly_images/image_2.jpg',
      title: '3I/ATLAS passed by the Sun',
    ),
    WeeklyModel(
      imagePath: 'assets/images/weekly_images/image_3.jpg',
      title: 'Perseid Meteor Shower 2026',
    ),
  ];

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

              Container(
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: weeklyNews.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 20),
                  itemBuilder: (BuildContext context, int index) {
                    final news = weeklyNews[index];
                    return Container(
                      width: 320,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 15,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(
                                0.1,
                              ), // Полупрозрачный белый фон стекла
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.2),
                                width: 1.5,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(18.0),
                                  ),
                                  child: Image.asset(
                                    news.imagePath,
                                    height:
                                        200, // Высота картинки внутри карточки
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        news.title, // Заголовок из нашего списка
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 4.0),
                                      Text(
                                        'Read more...',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white.withOpacity(0.6),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ), // Отступ снизу для красоты скролла всей страницы
            ],
          ),
        ),
      ),
    );
  }
}
