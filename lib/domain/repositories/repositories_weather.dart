import 'package:api_weather_app/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=d5d703a09d3e471cbb7145803232307&q=Kwidzyn&aqi=no

    return const WeatherModel(city: 'Kwidzyn', temperature: 20.0);
  }
}
