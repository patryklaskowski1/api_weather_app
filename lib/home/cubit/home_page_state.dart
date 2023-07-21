part of 'home_page_cubit.dart';

class HomePageState {
  final WeatherModel? model;
  final Status status;
  final String? errorMessage;

  const HomePageState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
}
