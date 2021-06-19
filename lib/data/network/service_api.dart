import 'package:dio/dio.dart';
import 'package:weatther2/data/network/cordinates_model.dart';
import 'package:weatther2/data/network/weather_model.dart';
import 'dio_settings.dart';

class ServiceApi {
  DioSettings _dioSettings;
  Dio _dio;

  /// И мап для запроса
  Map<String, dynamic> _request;
  static ServiceApi _instance = new ServiceApi.internal();
  factory ServiceApi() => _instance;
  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }
  Future<Weather> getWeather() async {
    final response = await _dio.get("/data/2.5/onecall?", queryParameters: {
      "appid": DioSettings.appid,
      "lat": DioSettings.lat,
      "lon": DioSettings.lon,
      "exclude": DioSettings.daily,
      "units": DioSettings.units,
    });
    Weather weather = Weather.fromJson(response.data);
    print(weather.hourly[0].dt);
    // print(DateTime.fromMillisecondsSinceEpoch(weather.hourly[3].dt * 1000));
    // print(DateTime.fromMillisecondsSinceEpoch(weather.hourly[6].dt * 1000));
    // print(DateTime.fromMillisecondsSinceEpoch(weather.hourly[9].dt * 1000));
    return weather;
  }

  Future<Coordinates> getCoordinates(city) async {
    final response = await _dio.get("/geo/1.0/direct?", queryParameters: {
      "q": city,
      "appid": DioSettings.appid,
    });
    Coordinates coordinate = Coordinates.fromJson(response.data[0]);
    DioSettings.lat = coordinate.lat;
    DioSettings.lon = coordinate.lon;
    return coordinate;
  }
}
