import 'package:api_weather_app/core/enum.dart';
import 'package:api_weather_app/domain/repositories/repositories_weather.dart';
import 'package:api_weather_app/home/aspect/display_weather_widget.dart';
import 'package:api_weather_app/home/aspect/search_widget.dart';
import 'package:api_weather_app/home/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(
        WeatherRepository(),
      ),
      child: BlocListener<HomePageCubit, HomePageState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unkown error ! :(';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            final weatherModel = state.model;
            return Scaffold(
              body: Center(
                child: Builder(builder: (context) {
                  if (state.status == Status.loading) {
                    return const Text('Loading');
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SearchWidget(),
                      if (weatherModel != null)
                        DisplayWeatherWidget(
                          weatherModel: weatherModel,
                        ),
                    ],
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
