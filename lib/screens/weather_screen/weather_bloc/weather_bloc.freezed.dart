// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

// ignore: unused_element
  _WeatherStateInitial initial() {
    return const _WeatherStateInitial();
  }

// ignore: unused_element
  _WeatherStateLoadInProgress loadInProgress() {
    return const _WeatherStateLoadInProgress();
  }

// ignore: unused_element
  _DataWeatherState data(Weather weather) {
    return _DataWeatherState(
      weather,
    );
  }

// ignore: unused_element
  _WeatherStateLoadFailure loadFailure() {
    return const _WeatherStateLoadFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult data(Weather weather),
    @required TResult loadFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult data(Weather weather),
    TResult loadFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_WeatherStateInitial value),
    @required TResult loadInProgress(_WeatherStateLoadInProgress value),
    @required TResult data(_DataWeatherState value),
    @required TResult loadFailure(_WeatherStateLoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_WeatherStateInitial value),
    TResult loadInProgress(_WeatherStateLoadInProgress value),
    TResult data(_DataWeatherState value),
    TResult loadFailure(_WeatherStateLoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$WeatherStateInitialCopyWith<$Res> {
  factory _$WeatherStateInitialCopyWith(_WeatherStateInitial value,
          $Res Function(_WeatherStateInitial) then) =
      __$WeatherStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateInitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateInitialCopyWith<$Res> {
  __$WeatherStateInitialCopyWithImpl(
      _WeatherStateInitial _value, $Res Function(_WeatherStateInitial) _then)
      : super(_value, (v) => _then(v as _WeatherStateInitial));

  @override
  _WeatherStateInitial get _value => super._value as _WeatherStateInitial;
}

/// @nodoc
class _$_WeatherStateInitial implements _WeatherStateInitial {
  const _$_WeatherStateInitial();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult data(Weather weather),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult data(Weather weather),
    TResult loadFailure(),
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
    @required TResult initial(_WeatherStateInitial value),
    @required TResult loadInProgress(_WeatherStateLoadInProgress value),
    @required TResult data(_DataWeatherState value),
    @required TResult loadFailure(_WeatherStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_WeatherStateInitial value),
    TResult loadInProgress(_WeatherStateLoadInProgress value),
    TResult data(_DataWeatherState value),
    TResult loadFailure(_WeatherStateLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateInitial implements WeatherState {
  const factory _WeatherStateInitial() = _$_WeatherStateInitial;
}

/// @nodoc
abstract class _$WeatherStateLoadInProgressCopyWith<$Res> {
  factory _$WeatherStateLoadInProgressCopyWith(
          _WeatherStateLoadInProgress value,
          $Res Function(_WeatherStateLoadInProgress) then) =
      __$WeatherStateLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateLoadInProgressCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLoadInProgressCopyWith<$Res> {
  __$WeatherStateLoadInProgressCopyWithImpl(_WeatherStateLoadInProgress _value,
      $Res Function(_WeatherStateLoadInProgress) _then)
      : super(_value, (v) => _then(v as _WeatherStateLoadInProgress));

  @override
  _WeatherStateLoadInProgress get _value =>
      super._value as _WeatherStateLoadInProgress;
}

/// @nodoc
class _$_WeatherStateLoadInProgress implements _WeatherStateLoadInProgress {
  const _$_WeatherStateLoadInProgress();

  @override
  String toString() {
    return 'WeatherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherStateLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult data(Weather weather),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult data(Weather weather),
    TResult loadFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_WeatherStateInitial value),
    @required TResult loadInProgress(_WeatherStateLoadInProgress value),
    @required TResult data(_DataWeatherState value),
    @required TResult loadFailure(_WeatherStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_WeatherStateInitial value),
    TResult loadInProgress(_WeatherStateLoadInProgress value),
    TResult data(_DataWeatherState value),
    TResult loadFailure(_WeatherStateLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoadInProgress implements WeatherState {
  const factory _WeatherStateLoadInProgress() = _$_WeatherStateLoadInProgress;
}

/// @nodoc
abstract class _$DataWeatherStateCopyWith<$Res> {
  factory _$DataWeatherStateCopyWith(
          _DataWeatherState value, $Res Function(_DataWeatherState) then) =
      __$DataWeatherStateCopyWithImpl<$Res>;
  $Res call({Weather weather});
}

/// @nodoc
class __$DataWeatherStateCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$DataWeatherStateCopyWith<$Res> {
  __$DataWeatherStateCopyWithImpl(
      _DataWeatherState _value, $Res Function(_DataWeatherState) _then)
      : super(_value, (v) => _then(v as _DataWeatherState));

  @override
  _DataWeatherState get _value => super._value as _DataWeatherState;

  @override
  $Res call({
    Object weather = freezed,
  }) {
    return _then(_DataWeatherState(
      weather == freezed ? _value.weather : weather as Weather,
    ));
  }
}

/// @nodoc
class _$_DataWeatherState implements _DataWeatherState {
  const _$_DataWeatherState(this.weather) : assert(weather != null);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.data(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataWeatherState &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @JsonKey(ignore: true)
  @override
  _$DataWeatherStateCopyWith<_DataWeatherState> get copyWith =>
      __$DataWeatherStateCopyWithImpl<_DataWeatherState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult data(Weather weather),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return data(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult data(Weather weather),
    TResult loadFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_WeatherStateInitial value),
    @required TResult loadInProgress(_WeatherStateLoadInProgress value),
    @required TResult data(_DataWeatherState value),
    @required TResult loadFailure(_WeatherStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_WeatherStateInitial value),
    TResult loadInProgress(_WeatherStateLoadInProgress value),
    TResult data(_DataWeatherState value),
    TResult loadFailure(_WeatherStateLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataWeatherState implements WeatherState {
  const factory _DataWeatherState(Weather weather) = _$_DataWeatherState;

  Weather get weather;
  @JsonKey(ignore: true)
  _$DataWeatherStateCopyWith<_DataWeatherState> get copyWith;
}

/// @nodoc
abstract class _$WeatherStateLoadFailureCopyWith<$Res> {
  factory _$WeatherStateLoadFailureCopyWith(_WeatherStateLoadFailure value,
          $Res Function(_WeatherStateLoadFailure) then) =
      __$WeatherStateLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateLoadFailureCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLoadFailureCopyWith<$Res> {
  __$WeatherStateLoadFailureCopyWithImpl(_WeatherStateLoadFailure _value,
      $Res Function(_WeatherStateLoadFailure) _then)
      : super(_value, (v) => _then(v as _WeatherStateLoadFailure));

  @override
  _WeatherStateLoadFailure get _value =>
      super._value as _WeatherStateLoadFailure;
}

/// @nodoc
class _$_WeatherStateLoadFailure implements _WeatherStateLoadFailure {
  const _$_WeatherStateLoadFailure();

  @override
  String toString() {
    return 'WeatherState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WeatherStateLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult data(Weather weather),
    @required TResult loadFailure(),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult data(Weather weather),
    TResult loadFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_WeatherStateInitial value),
    @required TResult loadInProgress(_WeatherStateLoadInProgress value),
    @required TResult data(_DataWeatherState value),
    @required TResult loadFailure(_WeatherStateLoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(data != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_WeatherStateInitial value),
    TResult loadInProgress(_WeatherStateLoadInProgress value),
    TResult data(_DataWeatherState value),
    TResult loadFailure(_WeatherStateLoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoadFailure implements WeatherState {
  const factory _WeatherStateLoadFailure() = _$_WeatherStateLoadFailure;
}

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

// ignore: unused_element
  _InitialWeatherEvent initial() {
    return const _InitialWeatherEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialWeatherEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialWeatherEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$InitialWeatherEventCopyWith<$Res> {
  factory _$InitialWeatherEventCopyWith(_InitialWeatherEvent value,
          $Res Function(_InitialWeatherEvent) then) =
      __$InitialWeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialWeatherEventCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$InitialWeatherEventCopyWith<$Res> {
  __$InitialWeatherEventCopyWithImpl(
      _InitialWeatherEvent _value, $Res Function(_InitialWeatherEvent) _then)
      : super(_value, (v) => _then(v as _InitialWeatherEvent));

  @override
  _InitialWeatherEvent get _value => super._value as _InitialWeatherEvent;
}

/// @nodoc
class _$_InitialWeatherEvent implements _InitialWeatherEvent {
  const _$_InitialWeatherEvent();

  @override
  String toString() {
    return 'WeatherEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialWeatherEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
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
    @required TResult initial(_InitialWeatherEvent value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialWeatherEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialWeatherEvent implements WeatherEvent {
  const factory _InitialWeatherEvent() = _$_InitialWeatherEvent;
}
