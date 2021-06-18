part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _WeatherStateInitial;
  const factory WeatherState.loadInProgress() = _WeatherStateLoadInProgress;
  const factory WeatherState.data(WeatherModel weather) = _DataWeatherState;
  const factory WeatherState.loadFailure() = _WeatherStateLoadFailure;
}


// abstract class WeatherState {}

// class WeatherInitial extends WeatherState {}

// class WeatherLoaded extends WeatherState {
//   final WeatherModel model;
//   WeatherLoaded(this.model);
// }

// class WeatherError extends WeatherState {
//   final String message;
//   WeatherError(this.message);
// }
