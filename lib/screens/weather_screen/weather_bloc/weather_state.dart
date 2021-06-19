part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _WeatherStateInitial;
  const factory WeatherState.loadInProgress() = _WeatherStateLoadInProgress;
  const factory WeatherState.data(Weather weather) = _DataWeatherState;
  const factory WeatherState.loadFailure() = _WeatherStateLoadFailure;
}
