import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HourlyList extends StatelessWidget {
  final List hourly;

  HourlyList({Key key, @required this.hourly}) : super(key: key);
  final List hourlyIndex = [3, 6, 9, 12];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: hourlyIndex.length,
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Text(DateFormat.jm()
                    .format(hourly[hourlyIndex[index]].dt)
                    .toString()),
                Container(
                  height: 50,
                  child: Image.network(
                      'http://openweathermap.org/img/wn/${hourly[hourlyIndex[index]].weather.first.icon}@4x.png',
                      fit: BoxFit.cover),
                ),
                Text(hourly[hourlyIndex[index]].temp.toInt().toString() + "°")
              ],
            ),
          );
        },
      ),
    );
  }
}
