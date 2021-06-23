import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weatther2/bloc/weather_repository.dart';
import 'package:weatther2/data/network/coordinates_model.dart';
import 'package:weatther2/data/network/weather_model.dart';

part 'selected_city_event.dart';
part 'selected_city_state.dart';
part 'selected_city_bloc.freezed.dart';

class SelectedCityBloc extends Bloc<SelectedCityEvent, SelectedCityState> {
  WeatherRepository repository = WeatherRepository();
  SelectedCityBloc() : super(SelectedCityState.initial());
  Coordinates city;

  @override
  Stream<SelectedCityState> mapEventToState(
    SelectedCityEvent event,
  ) async* {
    yield* event.map(
      initail: _mapInitialSelectedCityEvent,
      selectedView: _mapSelectedViewSelectedCityEvent,
    );
  }

  Stream<SelectedCityState> _mapInitialSelectedCityEvent(
      _InitialSelectedCityEvent event) async* {
    yield SelectedCityState.loading();
    yield SelectedCityState.initial();
  }

  Stream<SelectedCityState> _mapSelectedViewSelectedCityEvent(
      _SelectedViewSelectedCityEvent event) async* {
    yield SelectedCityState.loading();
    try {
      city = await repository.getCoordinates(event.city);
      Weather weather = await repository.getWeather(city);
      yield SelectedCityState.data(weather: weather, city: city);
    } catch (e) {
      // print(e);
      yield SelectedCityState.error(message: e);
    }
  }
}
