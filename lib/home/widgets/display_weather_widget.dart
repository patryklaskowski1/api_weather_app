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
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Hiszpania',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '${weatherModel.temperature.toString()} ℃',
                style: const TextStyle(
                  fontSize: 76,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '(${weatherModel.temperature.toString()} °F)',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Partly cloudy',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Local time :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '2023-07-31 9:59',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Wind :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '11.2 mph',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Cloud :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '29 %',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Humidity :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '29 %',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
