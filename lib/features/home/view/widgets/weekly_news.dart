import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moonlight/features/home/model/weekly_model.dart';

final List<WeeklyModel> weeklyNewsList = [
  WeeklyModel(
    imagePath: 'assets/images/weekly_news/image_1.jpg',
    title: 'The best places for observation',
  ),
  WeeklyModel(
    imagePath: 'assets/images/weekly_news/image_2.jpg',
    title: '3I/ATLAS passed by the Sun',
  ),
  WeeklyModel(
    imagePath: 'assets/images/weekly_news/image_3.jpg',
    title: 'Perseid Meteor Shower 2026',
  ),
];

Container weeklyNews() {
  return Container(
    height: 280,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: weeklyNewsList.length,
      separatorBuilder: (context, index) => SizedBox(width: 20),
      itemBuilder: (BuildContext context, int index) {
        final news = weeklyNewsList[index];
        return Container(
          width: 320,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.white24, width: 1.5),
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
                        height: 200, 
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
  );
}
