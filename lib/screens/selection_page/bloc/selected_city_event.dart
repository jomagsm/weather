part of 'selected_city_bloc.dart';

@freezed
abstract class SelectedCityEvent with _$SelectedCityEvent {
  const factory SelectedCityEvent.selectedView({@required String city}) =
      _SelectedViewSelectedCityEvent;
  const factory SelectedCityEvent.initail() = _InitialSelectedCityEvent;
}
