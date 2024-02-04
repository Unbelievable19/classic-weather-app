import 'package:classic_weather_app/models/weather_model.dart';
import 'package:classic_weather_app/services/weather_service.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPadeState();
}

class _MainPadeState extends State<MainPage> {
  /// api
  final _weatherService = WeatherService.WeatherService('de2eb7cbf31973563749fa825dc69ac7');
  Weather? _weather;

  ///fetch weather
  _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();

    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  ///animations

  ///init state
  @override
  void initState() {
    super.initState();

    ///fetch weather on status
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///city

            Text('${_weather?.cityName ?? "загрузка города.."}'),

            ///degrees
            Text('${_weather?.degrees.round()} C')
          ],
        ),
      ),
    );
  }
}
