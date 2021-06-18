import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:weatther2/bloc/weather_repository.dart';
import 'package:weatther2/data/network/service_api.dart';
import 'package:weatther2/theme/color_theme.dart';
import 'generated/l10n.dart';
import 'theme/text_theme.dart';
import 'weather_bloc/weather_bloc.dart';

void main() {
  // var wethet = ServiceApi();
  // print(wethet.getWeather());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final bloc = WeatherBloc(WeatherRepository());
  dynamic currentDate = DateFormat.yMMMMEEEEd().format(DateTime.now());
  dynamic currentTime = DateFormat.jm().format(DateTime.now());
  // DateFormat.yMMMEd().format(DateTime.now());
  // bb = DateFormat.jm().format(DateTime.now());
  String city = "Бишкек";

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
                      body: SafeArea(
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
                                _data.weather.name,
                                style: TextThemes.h4,
                              ),
                              Container(
                                height: 250,
                                width: double.infinity,
                                child: Image.network(
                                    'http://openweathermap.org/img/wn/${_data.weather.weather.icon}@4x.png',
                                    fit: BoxFit.cover),
                              ),
                              Text(
                                _data.weather.main.temp.toInt().toString() +
                                    '°',
                                style: TextThemes.temp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));
          },
        ));
  }
}
