import 'package:flutter/material.dart';
import 'package:moonlight/features/home/model/weather_forecast_model.dart';

final List<WeatherForecastModel> weeklyWeatherList = [
  WeatherForecastModel(
    dayOfTheWeek: 'Mo',
    imagePath: 'assets/images/weekly_weather_forecast/clear.png',
    temp: '+18',
  ),
  WeatherForecastModel(
    dayOfTheWeek: 'Tu',
    imagePath: 'assets/images/weekly_weather_forecast/partly_cloudy.png',
    temp: '+17',
  ),
  WeatherForecastModel(
    dayOfTheWeek: 'We',
    imagePath: 'assets/images/weekly_weather_forecast/cloudy.png',
    temp: '+15',
  ),
  WeatherForecastModel(
    dayOfTheWeek: 'Th',
    imagePath: 'assets/images/weekly_weather_forecast/partly_cloudy.png',
    temp: '+18',
  ),
  WeatherForecastModel(
    dayOfTheWeek: 'Fr',
    imagePath: 'assets/images/weekly_weather_forecast/clear.png',
    temp: '+20',
  ),
  WeatherForecastModel(
    dayOfTheWeek: 'Sa',
    imagePath: 'assets/images/weekly_weather_forecast/clear.png',
    temp: '+22',
  ),
  WeatherForecastModel(
    dayOfTheWeek: 'Su',
    imagePath: 'assets/images/weekly_weather_forecast/clear.png',
    temp: '+24',
  ),
];

Container weeklyWeatherForecast() {
  return Container(
    height: 120,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final news = weeklyWeatherList[index];

        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(news.dayOfTheWeek, style: TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              Image.asset(news.imagePath, width: 48, height: 48),
              const SizedBox(height: 5),
              Text(news.temp, style: TextStyle(fontSize: 16)),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(width: 20),
      itemCount: weeklyWeatherList.length,
    ),
  );
}
