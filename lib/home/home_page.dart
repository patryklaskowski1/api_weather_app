import 'package:api_weather_app/domain/repositories/repositories_weather.dart';
import 'package:api_weather_app/home/aspect/text_field_search_city.dart';
import 'package:api_weather_app/home/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(WeatherRepository()),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return const Scaffold(
            body: Center(
                child: Padding(
              padding: EdgeInsets.all(70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFieldSearchCity(),
                  SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Check'),
                  ),
                  SizedBox(height: 22),
                  Text(
                    'City',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '18℃',
                    style: TextStyle(
                      fontSize: 72,
                    ),
                  ),
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
