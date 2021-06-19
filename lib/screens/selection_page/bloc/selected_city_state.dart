part of 'selected_city_bloc.dart';

@freezed
abstract class SelectedCityState with _$SelectedCityState {
  const factory SelectedCityState.data({@required Coordinates city}) =
      _DataSelectedCityState;
  const factory SelectedCityState.initial() = _InitialSelectedCityState;
  const factory SelectedCityState.loading() = _LoadingSelectedCityState;
  const factory SelectedCityState.error({@required String message}) =
      _ErrorSelectedCityState;
}
