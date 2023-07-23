import 'package:api_weather_app/domain/models/weather_model.dart';
import '../../data/remote_data_sources/weather_remote_data_source.dart';

class WeatherRepository {
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepository(this._weatherRemoteDataSource);

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await _weatherRemoteDataSource.getDataWeather(
      city: city,
    );

    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
