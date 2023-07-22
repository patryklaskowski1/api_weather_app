import 'package:api_weather_app/core/enum.dart';
import 'package:api_weather_app/domain/models/weather_model.dart';
import 'package:api_weather_app/domain/repositories/repositories_weather.dart';
import 'package:bloc/bloc.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._weatherRepository) : super(const HomePageState());

  final WeatherRepository _weatherRepository;

  Future<void> getWeatherModel({
    required String city,
  }) async {
    emit(const HomePageState(status: Status.loading));
    try {
      final weatherModel = await _weatherRepository.getWeatherModel(city: city);
      emit(
        HomePageState(
          model: weatherModel,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        HomePageState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
