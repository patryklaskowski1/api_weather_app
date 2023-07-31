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
                  color: Colors.white,
                ),
              ),
              Text(
                weatherModel.country,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        NetworkImage("https:${weatherModel.icon.toString()}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        '${weatherModel.tempC.toString()} ℃',
                        style: const TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '(${weatherModel.tempF.toString()} °F)',
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                weatherModel.condition,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    weatherModel.localTime,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '${weatherModel.wind.toString()} mph',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${weatherModel.cloud.toString()} %',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${weatherModel.humidity} %',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
