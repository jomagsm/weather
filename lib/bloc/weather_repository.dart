import 'package:weatther2/data/network/coordinates_model.dart';
import 'package:weatther2/data/network/service_api.dart';
import 'package:weatther2/data/network/weather_model.dart';

class WeatherRepository {
  ServiceApi _weatherProvider = ServiceApi();
  Future<Coordinates> getCoordinates(String city) =>
      _weatherProvider.getCoordinates(city);

  Future<Weather> getWeather() => _weatherProvider.getWeather();
}
