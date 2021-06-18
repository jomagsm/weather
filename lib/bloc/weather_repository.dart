import 'package:weatther2/data/network/models.dart';
import 'package:weatther2/data/network/service_api.dart';

class WeatherRepository {
  ServiceApi _weatherProvider = ServiceApi();
  Future<WeatherModel> getWeather() => _weatherProvider.getWeather();
}
