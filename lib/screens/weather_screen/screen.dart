import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatther2/bloc/weather_repository.dart';
import 'package:weatther2/data/network/coordinates_model.dart';
import 'package:weatther2/screens/weather_screen/weather_bloc/weather_bloc.dart';

import 'widgets/content.dart';
import 'widgets/hourly_list.dart';

class HomePage extends StatelessWidget {
  final Coordinates city;
  HomePage({Key key, @required this.city}) : super(key: key);
  final bloc = WeatherBloc(WeatherRepository());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
        create: (BuildContext context) =>
            bloc..add(WeatherEvent.initial(city: city)),
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Center(child: CircularProgressIndicator()),
              data: (_data) => SingleChildScrollView(
                child: SafeArea(
                  child: Center(
                    child: Column(
                      children: [
                        Content(
                          weather: _data.weather,
                          city: city,
                        ),
                        HourlyList(
                          hourly: _data.weather.hourly,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
