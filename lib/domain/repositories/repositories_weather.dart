import 'package:api_weather_app/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    return const WeatherModel(city: 'Kwidzyn', temperature: 20.0);
  }
}
