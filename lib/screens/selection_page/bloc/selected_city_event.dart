part of 'selected_city_bloc.dart';

@freezed
abstract class SelectedCityEvent with _$SelectedCityEvent {
  // const factory SelectedCityEvent.initial() = _InitialSelectedCityEvent;
  const factory SelectedCityEvent.selectedView({@required String city}) =
      _SelectedViewSelectedCityEvent;
}


// @freezed
// abstract class CharactersEvent with _$CharactersEvent {
  /// Событие инициализации
  // const factory CharactersEvent.initial() = _InitialCharactersEvent;

  ///Событие выбора темы
  // const factory CharactersEvent.selectedView({
    // @required bool isGrid,
  // }) = _SelectedViewCharactersEvent;
// }