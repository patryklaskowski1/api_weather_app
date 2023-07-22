import 'package:api_weather_app/home/widgets/text_field_search_city.dart';
import 'package:api_weather_app/home/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({
    Key? key,
  }) : super(key: key);

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: TextFieldSearchCity(),
          ),
          const SizedBox(width: 50),
          ElevatedButton(
            onPressed: () {
              context
                  .read<HomePageCubit>()
                  .getWeatherModel(city: _controller.text);
            },
            child: const Text('Check'),
          ),
        ],
      ),
    );
  }
}
