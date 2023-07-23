import 'package:api_weather_app/domain/models/weather_model.dart';
import '../../data/remote_data_sources/weather_remote_data_source.dart';

class WeatherRepository {
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepository(this._weatherRemoteDataSource);

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final responseData = await _weatherRemoteDataSource.getDataWeather(
      city: city,
    );

    if (responseData == null) {
      return null;
    }

    final cityName = responseData['location']['name'] as String;
    final temperatureC = (responseData['current']['temp_c'] + 0.0) as double;

    return WeatherModel(city: cityName, temperature: temperatureC);
  }
}
