import 'package:api_weather_app/domain/models/weather_model.dart';
import 'package:dio/dio.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=d5d703a09d3e471cbb7145803232307&q=$city&aqi=no');
    final responseData = response.data;

    if (responseData == null) {
      return null;
    }

    final cityName = responseData['location']['name'] as String;
    final temperatureC = (responseData['current']['temp_c'] + 0.0) as double;

    return WeatherModel(city: cityName, temperature: temperatureC);
  }
}
