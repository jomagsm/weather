// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'selected_city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SelectedCityEventTearOff {
  const _$SelectedCityEventTearOff();

// ignore: unused_element
  _SelectedViewSelectedCityEvent selectedView({@required String city}) {
    return _SelectedViewSelectedCityEvent(
      city: city,
    );
  }

// ignore: unused_element
  _InitialSelectedCityEvent initail() {
    return const _InitialSelectedCityEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $SelectedCityEvent = _$SelectedCityEventTearOff();

/// @nodoc
mixin _$SelectedCityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectedView(String city),
    @required TResult initail(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectedView(String city),
    TResult initail(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selectedView(_SelectedViewSelectedCityEvent value),
    @required TResult initail(_InitialSelectedCityEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectedView(_SelectedViewSelectedCityEvent value),
    TResult initail(_InitialSelectedCityEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SelectedCityEventCopyWith<$Res> {
  factory $SelectedCityEventCopyWith(
          SelectedCityEvent value, $Res Function(SelectedCityEvent) then) =
      _$SelectedCityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedCityEventCopyWithImpl<$Res>
    implements $SelectedCityEventCopyWith<$Res> {
  _$SelectedCityEventCopyWithImpl(this._value, this._then);

  final SelectedCityEvent _value;
  // ignore: unused_field
  final $Res Function(SelectedCityEvent) _then;
}

/// @nodoc
abstract class _$SelectedViewSelectedCityEventCopyWith<$Res> {
  factory _$SelectedViewSelectedCityEventCopyWith(
          _SelectedViewSelectedCityEvent value,
          $Res Function(_SelectedViewSelectedCityEvent) then) =
      __$SelectedViewSelectedCityEventCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class __$SelectedViewSelectedCityEventCopyWithImpl<$Res>
    extends _$SelectedCityEventCopyWithImpl<$Res>
    implements _$SelectedViewSelectedCityEventCopyWith<$Res> {
  __$SelectedViewSelectedCityEventCopyWithImpl(
      _SelectedViewSelectedCityEvent _value,
      $Res Function(_SelectedViewSelectedCityEvent) _then)
      : super(_value, (v) => _then(v as _SelectedViewSelectedCityEvent));

  @override
  _SelectedViewSelectedCityEvent get _value =>
      super._value as _SelectedViewSelectedCityEvent;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_SelectedViewSelectedCityEvent(
      city: city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$_SelectedViewSelectedCityEvent
    implements _SelectedViewSelectedCityEvent {
  const _$_SelectedViewSelectedCityEvent({@required this.city})
      : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'SelectedCityEvent.selectedView(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewSelectedCityEvent &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewSelectedCityEventCopyWith<_SelectedViewSelectedCityEvent>
      get copyWith => __$SelectedViewSelectedCityEventCopyWithImpl<
          _SelectedViewSelectedCityEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectedView(String city),
    @required TResult initail(),
  }) {
    assert(selectedView != null);
    assert(initail != null);
    return selectedView(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectedView(String city),
    TResult initail(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedView != null) {
      return selectedView(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selectedView(_SelectedViewSelectedCityEvent value),
    @required TResult initail(_InitialSelectedCityEvent value),
  }) {
    assert(selectedView != null);
    assert(initail != null);
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectedView(_SelectedViewSelectedCityEvent value),
    TResult initail(_InitialSelectedCityEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewSelectedCityEvent implements SelectedCityEvent {
  const factory _SelectedViewSelectedCityEvent({@required String city}) =
      _$_SelectedViewSelectedCityEvent;

  String get city;
  @JsonKey(ignore: true)
  _$SelectedViewSelectedCityEventCopyWith<_SelectedViewSelectedCityEvent>
      get copyWith;
}

/// @nodoc
abstract class _$InitialSelectedCityEventCopyWith<$Res> {
  factory _$InitialSelectedCityEventCopyWith(_InitialSelectedCityEvent value,
          $Res Function(_InitialSelectedCityEvent) then) =
      __$InitialSelectedCityEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialSelectedCityEventCopyWithImpl<$Res>
    extends _$SelectedCityEventCopyWithImpl<$Res>
    implements _$InitialSelectedCityEventCopyWith<$Res> {
  __$InitialSelectedCityEventCopyWithImpl(_InitialSelectedCityEvent _value,
      $Res Function(_InitialSelectedCityEvent) _then)
      : super(_value, (v) => _then(v as _InitialSelectedCityEvent));

  @override
  _InitialSelectedCityEvent get _value =>
      super._value as _InitialSelectedCityEvent;
}

/// @nodoc
class _$_InitialSelectedCityEvent implements _InitialSelectedCityEvent {
  const _$_InitialSelectedCityEvent();

  @override
  String toString() {
    return 'SelectedCityEvent.initail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialSelectedCityEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult selectedView(String city),
    @required TResult initail(),
  }) {
    assert(selectedView != null);
    assert(initail != null);
    return initail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult selectedView(String city),
    TResult initail(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initail != null) {
      return initail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult selectedView(_SelectedViewSelectedCityEvent value),
    @required TResult initail(_InitialSelectedCityEvent value),
  }) {
    assert(selectedView != null);
    assert(initail != null);
    return initail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult selectedView(_SelectedViewSelectedCityEvent value),
    TResult initail(_InitialSelectedCityEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initail != null) {
      return initail(this);
    }
    return orElse();
  }
}

abstract class _InitialSelectedCityEvent implements SelectedCityEvent {
  const factory _InitialSelectedCityEvent() = _$_InitialSelectedCityEvent;
}

/// @nodoc
class _$SelectedCityStateTearOff {
  const _$SelectedCityStateTearOff();

// ignore: unused_element
  _DataSelectedCityState data({@required Weather weather, Coordinates city}) {
    return _DataSelectedCityState(
      weather: weather,
      city: city,
    );
  }

// ignore: unused_element
  _InitialSelectedCityState initial() {
    return const _InitialSelectedCityState();
  }

// ignore: unused_element
  _LoadingSelectedCityState loading() {
    return const _LoadingSelectedCityState();
  }

// ignore: unused_element
  _ErrorSelectedCityState error({@required String message}) {
    return _ErrorSelectedCityState(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SelectedCityState = _$SelectedCityStateTearOff();

/// @nodoc
mixin _$SelectedCityState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(Weather weather, Coordinates city),
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(Weather weather, Coordinates city),
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataSelectedCityState value),
    @required TResult initial(_InitialSelectedCityState value),
    @required TResult loading(_LoadingSelectedCityState value),
    @required TResult error(_ErrorSelectedCityState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataSelectedCityState value),
    TResult initial(_InitialSelectedCityState value),
    TResult loading(_LoadingSelectedCityState value),
    TResult error(_ErrorSelectedCityState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SelectedCityStateCopyWith<$Res> {
  factory $SelectedCityStateCopyWith(
          SelectedCityState value, $Res Function(SelectedCityState) then) =
      _$SelectedCityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedCityStateCopyWithImpl<$Res>
    implements $SelectedCityStateCopyWith<$Res> {
  _$SelectedCityStateCopyWithImpl(this._value, this._then);

  final SelectedCityState _value;
  // ignore: unused_field
  final $Res Function(SelectedCityState) _then;
}

/// @nodoc
abstract class _$DataSelectedCityStateCopyWith<$Res> {
  factory _$DataSelectedCityStateCopyWith(_DataSelectedCityState value,
          $Res Function(_DataSelectedCityState) then) =
      __$DataSelectedCityStateCopyWithImpl<$Res>;
  $Res call({Weather weather, Coordinates city});
}

/// @nodoc
class __$DataSelectedCityStateCopyWithImpl<$Res>
    extends _$SelectedCityStateCopyWithImpl<$Res>
    implements _$DataSelectedCityStateCopyWith<$Res> {
  __$DataSelectedCityStateCopyWithImpl(_DataSelectedCityState _value,
      $Res Function(_DataSelectedCityState) _then)
      : super(_value, (v) => _then(v as _DataSelectedCityState));

  @override
  _DataSelectedCityState get _value => super._value as _DataSelectedCityState;

  @override
  $Res call({
    Object weather = freezed,
    Object city = freezed,
  }) {
    return _then(_DataSelectedCityState(
      weather: weather == freezed ? _value.weather : weather as Weather,
      city: city == freezed ? _value.city : city as Coordinates,
    ));
  }
}

/// @nodoc
class _$_DataSelectedCityState implements _DataSelectedCityState {
  const _$_DataSelectedCityState({@required this.weather, this.city})
      : assert(weather != null);

  @override
  final Weather weather;
  @override
  final Coordinates city;

  @override
  String toString() {
    return 'SelectedCityState.data(weather: $weather, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataSelectedCityState &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$DataSelectedCityStateCopyWith<_DataSelectedCityState> get copyWith =>
      __$DataSelectedCityStateCopyWithImpl<_DataSelectedCityState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(Weather weather, Coordinates city),
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return data(weather, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(Weather weather, Coordinates city),
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(weather, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataSelectedCityState value),
    @required TResult initial(_InitialSelectedCityState value),
    @required TResult loading(_LoadingSelectedCityState value),
    @required TResult error(_ErrorSelectedCityState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataSelectedCityState value),
    TResult initial(_InitialSelectedCityState value),
    TResult loading(_LoadingSelectedCityState value),
    TResult error(_ErrorSelectedCityState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataSelectedCityState implements SelectedCityState {
  const factory _DataSelectedCityState(
      {@required Weather weather, Coordinates city}) = _$_DataSelectedCityState;

  Weather get weather;
  Coordinates get city;
  @JsonKey(ignore: true)
  _$DataSelectedCityStateCopyWith<_DataSelectedCityState> get copyWith;
}

/// @nodoc
abstract class _$InitialSelectedCityStateCopyWith<$Res> {
  factory _$InitialSelectedCityStateCopyWith(_InitialSelectedCityState value,
          $Res Function(_InitialSelectedCityState) then) =
      __$InitialSelectedCityStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialSelectedCityStateCopyWithImpl<$Res>
    extends _$SelectedCityStateCopyWithImpl<$Res>
    implements _$InitialSelectedCityStateCopyWith<$Res> {
  __$InitialSelectedCityStateCopyWithImpl(_InitialSelectedCityState _value,
      $Res Function(_InitialSelectedCityState) _then)
      : super(_value, (v) => _then(v as _InitialSelectedCityState));

  @override
  _InitialSelectedCityState get _value =>
      super._value as _InitialSelectedCityState;
}

/// @nodoc
class _$_InitialSelectedCityState implements _InitialSelectedCityState {
  const _$_InitialSelectedCityState();

  @override
  String toString() {
    return 'SelectedCityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialSelectedCityState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(Weather weather, Coordinates city),
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(Weather weather, Coordinates city),
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataSelectedCityState value),
    @required TResult initial(_InitialSelectedCityState value),
    @required TResult loading(_LoadingSelectedCityState value),
    @required TResult error(_ErrorSelectedCityState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataSelectedCityState value),
    TResult initial(_InitialSelectedCityState value),
    TResult loading(_LoadingSelectedCityState value),
    TResult error(_ErrorSelectedCityState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSelectedCityState implements SelectedCityState {
  const factory _InitialSelectedCityState() = _$_InitialSelectedCityState;
}

/// @nodoc
abstract class _$LoadingSelectedCityStateCopyWith<$Res> {
  factory _$LoadingSelectedCityStateCopyWith(_LoadingSelectedCityState value,
          $Res Function(_LoadingSelectedCityState) then) =
      __$LoadingSelectedCityStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingSelectedCityStateCopyWithImpl<$Res>
    extends _$SelectedCityStateCopyWithImpl<$Res>
    implements _$LoadingSelectedCityStateCopyWith<$Res> {
  __$LoadingSelectedCityStateCopyWithImpl(_LoadingSelectedCityState _value,
      $Res Function(_LoadingSelectedCityState) _then)
      : super(_value, (v) => _then(v as _LoadingSelectedCityState));

  @override
  _LoadingSelectedCityState get _value =>
      super._value as _LoadingSelectedCityState;
}

/// @nodoc
class _$_LoadingSelectedCityState implements _LoadingSelectedCityState {
  const _$_LoadingSelectedCityState();

  @override
  String toString() {
    return 'SelectedCityState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingSelectedCityState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(Weather weather, Coordinates city),
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(Weather weather, Coordinates city),
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataSelectedCityState value),
    @required TResult initial(_InitialSelectedCityState value),
    @required TResult loading(_LoadingSelectedCityState value),
    @required TResult error(_ErrorSelectedCityState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataSelectedCityState value),
    TResult initial(_InitialSelectedCityState value),
    TResult loading(_LoadingSelectedCityState value),
    TResult error(_ErrorSelectedCityState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSelectedCityState implements SelectedCityState {
  const factory _LoadingSelectedCityState() = _$_LoadingSelectedCityState;
}

/// @nodoc
abstract class _$ErrorSelectedCityStateCopyWith<$Res> {
  factory _$ErrorSelectedCityStateCopyWith(_ErrorSelectedCityState value,
          $Res Function(_ErrorSelectedCityState) then) =
      __$ErrorSelectedCityStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorSelectedCityStateCopyWithImpl<$Res>
    extends _$SelectedCityStateCopyWithImpl<$Res>
    implements _$ErrorSelectedCityStateCopyWith<$Res> {
  __$ErrorSelectedCityStateCopyWithImpl(_ErrorSelectedCityState _value,
      $Res Function(_ErrorSelectedCityState) _then)
      : super(_value, (v) => _then(v as _ErrorSelectedCityState));

  @override
  _ErrorSelectedCityState get _value => super._value as _ErrorSelectedCityState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorSelectedCityState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ErrorSelectedCityState implements _ErrorSelectedCityState {
  const _$_ErrorSelectedCityState({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'SelectedCityState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorSelectedCityState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorSelectedCityStateCopyWith<_ErrorSelectedCityState> get copyWith =>
      __$ErrorSelectedCityStateCopyWithImpl<_ErrorSelectedCityState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(Weather weather, Coordinates city),
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String message),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(Weather weather, Coordinates city),
    TResult initial(),
    TResult loading(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(_DataSelectedCityState value),
    @required TResult initial(_InitialSelectedCityState value),
    @required TResult loading(_LoadingSelectedCityState value),
    @required TResult error(_ErrorSelectedCityState value),
  }) {
    assert(data != null);
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(_DataSelectedCityState value),
    TResult initial(_InitialSelectedCityState value),
    TResult loading(_LoadingSelectedCityState value),
    TResult error(_ErrorSelectedCityState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSelectedCityState implements SelectedCityState {
  const factory _ErrorSelectedCityState({@required String message}) =
      _$_ErrorSelectedCityState;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorSelectedCityStateCopyWith<_ErrorSelectedCityState> get copyWith;
}
