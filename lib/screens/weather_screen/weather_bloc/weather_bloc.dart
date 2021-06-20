import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatther2/bloc/weather_repository.dart';
import 'package:weatther2/data/network/coordinates_model.dart';
import 'package:weatther2/data/network/weather_model.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherRepository repository = WeatherRepository();
  WeatherBloc(this.repository) : super(WeatherState.initial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    yield* event.map(
      initial: _mapInitialWeatherEvent,
    );
  }

  Stream<WeatherState> _mapInitialWeatherEvent(
      _InitialWeatherEvent event) async* {
    yield WeatherState.loadInProgress();
    Weather data = await repository.getWeather(event.city);
    yield WeatherState.data(data);
  }
}
