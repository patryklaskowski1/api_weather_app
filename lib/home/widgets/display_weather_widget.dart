import 'package:api_weather_app/domain/models/weather_model.dart';
import 'package:api_weather_app/home/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayWeatherWidget extends StatelessWidget {
  const DisplayWeatherWidget({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.city,
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                '${weatherModel.temperature.toString()} ℃',
                style: const TextStyle(
                  fontSize: 76,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
