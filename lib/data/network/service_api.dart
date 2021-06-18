import 'package:dio/dio.dart';
import 'package:weatther2/data/network/models.dart';
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
  Future<WeatherModel> getWeather(city) async {
    final response = await _dio.get("", queryParameters: {
      "q": city,
      "appid": DioSettings.appid,
      "units": DioSettings.units,
    });
    WeatherModel weather = WeatherModel.fromJson(response.data);
    return weather;
  }
}
// ?q=Bishkek&appid=5452d8bda19e96bbe4ab066cddd371f8&units=metric
