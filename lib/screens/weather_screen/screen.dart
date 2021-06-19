import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weatther2/bloc/weather_repository.dart';
import 'package:weatther2/screens/weather_screen/weather_bloc/weather_bloc.dart';
import 'package:weatther2/theme/color_theme.dart';
import 'package:weatther2/theme/text_theme.dart';

import 'widgets/hourly_list.dart';

class HomePage extends StatelessWidget {
  final String city;
  HomePage({Key key, @required this.city}) : super(key: key);
  final List hourlyIndex = [3, 6, 9, 12];
  final bloc = WeatherBloc(WeatherRepository());
  final dynamic currentDate = DateFormat.yMMMMEEEEd().format(DateTime.now());
  final dynamic currentWeekday = DateFormat.EEEE().format(DateTime.now());
  final dynamic currentTime = DateFormat.jm().format(DateTime.now());
  // final String city = "Бишкек";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherBloc>(
        create: (BuildContext context) => bloc..add(WeatherEvent.initial()),
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => CircularProgressIndicator(),
                data: (_data) => Scaffold(
                      backgroundColor: ColorPalette.blue,
                      body: SingleChildScrollView(
                        child: SafeArea(
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 38,
                                ),
                                Text(
                                  currentDate,
                                  style: TextThemes.h4,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  currentTime,
                                  style: TextThemes.time,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  city,
                                  style: TextThemes.h4,
                                ),
                                Container(
                                  height: 250,
                                  width: double.infinity,
                                  child: Image.network(
                                      'http://openweathermap.org/img/wn/${_data.weather.hourly.first.weather.first.icon}@4x.png',
                                      fit: BoxFit.cover),
                                ),
                                Text(
                                  _data.weather.hourly.first.temp
                                          .toInt()
                                          .toString() +
                                      '°',
                                  style: TextThemes.temp,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  currentWeekday,
                                  style: TextThemes.h3,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  width: 250,
                                  child: const Divider(
                                    height: 5,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                HourlyList(
                                  hourly: _data.weather.hourly,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
          },
        ));
  }
}
