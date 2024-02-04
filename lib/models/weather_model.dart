import 'dart:convert';
//import 'dart:js_interop';

class Weather {
  final String cityName;
  final double degrees;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.degrees,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      degrees: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
