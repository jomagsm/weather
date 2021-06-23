import 'package:dio/dio.dart';
import 'package:weatther2/data/network/coordinates_model.dart';
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
  Future<Weather> getWeather(Coordinates city) async {
    try {
      final response = await _dio.get("/data/2.5/onecall?", queryParameters: {
        "appid": DioSettings.appid,
        "lat": city.lat,
        "lon": city.lon,
        "exclude": DioSettings.daily,
        "units": DioSettings.units,
      });
      Weather weather = Weather.fromJson(response.data);
      return weather;
    } catch (e) {
      print(e);
    }
  }

  Future<Coordinates> getCoordinates(String city) async {
    try {
      final response = await _dio.get("/geo/1.0/direct?", queryParameters: {
        "q": city,
        "appid": DioSettings.appid,
      });
      try {
        Coordinates coordinate = Coordinates.fromJson(response.data[0]);
        return coordinate;
      } catch (e) {
        print("0" * 50);
        print(e);
        // print(e.error);
        throw (e);
      }
    } catch (e) {
      print(e);
      throw e.error;
      // print(e);
      // print(e.error);
      // print(e);
      // DioError();
    }
  }
}
