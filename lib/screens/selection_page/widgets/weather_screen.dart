import 'package:flutter/material.dart';
import 'package:weatther2/screens/selection_page/widgets/content.dart';
import 'package:weatther2/screens/selection_page/widgets/utils.dart';

import 'hourly_list.dart';

class WeatherScreen extends StatelessWidget {
  final data;
  final Function onPressed;
  WeatherScreen({Key key, @required this.onPressed, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: onPressed,
        ),
        title: Text(data.city.name),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: getBackground(data.weather.hourly[0].weather[0].id),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Content(
                  weather: data.weather,
                  city: data.city,
                ),
                HourlyList(
                  hourly: data.weather.hourly,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
