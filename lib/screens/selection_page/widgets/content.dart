import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatther2/data/network/coordinates_model.dart';
import 'package:weatther2/data/network/weather_model.dart';
import 'package:weatther2/theme/text_theme.dart';

class Content extends StatelessWidget {
  final Coordinates city;
  final Weather weather;
  final dynamic currentDate = DateFormat.yMMMMEEEEd().format(DateTime.now());
  final dynamic currentWeekday = DateFormat.EEEE().format(DateTime.now());
  final dynamic currentTime = DateFormat.jm().format(DateTime.now());

  Content({Key key, @required this.weather, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
        city.name,
        style: TextThemes.h4,
      ),
      Container(
        height: 250,
        width: double.infinity,
        child: Image.network(
            'http://openweathermap.org/img/wn/${weather.hourly.first.weather.first.icon}@4x.png',
            fit: BoxFit.cover),
      ),
      Text(
        weather.hourly.first.temp.toInt().toString() + '°',
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
      )
    ]);
  }
}
