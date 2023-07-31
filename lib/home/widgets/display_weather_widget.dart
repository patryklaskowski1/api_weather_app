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
          padding: const EdgeInsets.only(top: 10),
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
              Text(
                weatherModel.country,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        NetworkImage("https:${weatherModel.icon.toString()}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  '${weatherModel.temperature.toString()} ℃',
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                '(${weatherModel.temperature.toString()} °F)',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                weatherModel.condition,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Local time :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    weatherModel.localTime,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Wind :',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    '${weatherModel.wind.toString()} mph',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Cloud :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '${weatherModel.cloud.toString()} %',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Humidity :',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    '${weatherModel.humidity} %',
                    style: const TextStyle(
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
