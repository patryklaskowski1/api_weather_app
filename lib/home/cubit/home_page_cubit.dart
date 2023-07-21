import 'package:api_weather_app/core/enum.dart';
import 'package:api_weather_app/domain/models/weather_model.dart';
import 'package:bloc/bloc.dart';


part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState());
}

