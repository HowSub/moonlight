import 'dart:ui'; // 👈 ОБЯЗАТЕЛЬНО: добавили для работы ImageFilter.blur
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

  // Создадим временный список заголовков, чтобы у каждой карточки был свой текст
  final List<String> _newsTitles = [
    'The best places for observation',
    '3I/Atlas flew past the sun',
    'Perseid meteor shower in 2026',
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
            icon: const Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF000e5e), Color(0xFF141C48), Color(0xFF485A6E)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 120),

              moonPhases(),

              const SizedBox(height: 40),

              // Блок горизонтальных Glassmorphism карточек
              Container(
                height:
                    280, // немного увеличили высоту, чтобы поместился и текст, и картинка
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: _weeklyImages.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 20),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width:
                          320, // 👈 Задаем фиксированную ширину для горизонтальной карточки
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
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ), // Скругляем саму стеклянную карточку
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10.0,
                            sigmaY: 10.0,
                          ), // 👈 Эффект размытия
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(
                                0.1,
                              ), // Полупрозрачный белый фон стекла
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Colors.white.withOpacity(
                                  0.2,
                                ), // Тонкий отблеск на гранях
                                width: 1.5,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // 1. Картинка внутри карточки (скруглены только верхние углы)
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(18.0),
                                  ),
                                  child: Image.asset(
                                    _weeklyImages[index],
                                    height:
                                        200, // Высота картинки внутри карточки
                                    width: double.infinity,
                                    fit: BoxFit
                                        .cover, // Картинка аккуратно заполнит верхнюю часть
                                  ),
                                ),

                                // 2. Заголовок новости под картинкой
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _newsTitles[index], // Заголовок из нашего списка
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
