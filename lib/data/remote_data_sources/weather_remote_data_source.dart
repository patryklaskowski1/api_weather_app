import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getDataWeather({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=d5d703a09d3e471cbb7145803232307&q=$city&aqi=no');
    return response.data;
  }
}
