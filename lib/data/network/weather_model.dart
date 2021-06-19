// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
  Weather({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.minutely,
    this.hourly,
  });

  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  List<Minutely> minutely;
  List<Hourly> hourly;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        timezone: json["timezone"],
        timezoneOffset: json["timezone_offset"],
        minutely: List<Minutely>.from(
            json["minutely"].map((x) => Minutely.fromJson(x))),
        hourly:
            List<Hourly>.from(json["hourly"].map((x) => Hourly.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
        "timezone": timezone,
        "timezone_offset": timezoneOffset,
        "minutely": List<dynamic>.from(minutely.map((x) => x.toJson())),
        "hourly": List<dynamic>.from(hourly.map((x) => x.toJson())),
      };
}

class Hourly {
  Hourly({
    this.dt,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
    this.rain,
  });

  DateTime dt;
  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double uvi;
  int clouds;
  int visibility;
  double windSpeed;
  int windDeg;
  double windGust;
  List<WeatherElement> weather;
  double pop;
  Rain rain;

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
        dt: DateTime.fromMillisecondsSinceEpoch(json["dt"] * 1000),
        temp: json["temp"].toDouble(),
        feelsLike: json["feels_like"].toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
        dewPoint: json["dew_point"].toDouble(),
        uvi: json["uvi"].toDouble(),
        clouds: json["clouds"],
        visibility: json["visibility"],
        windSpeed: json["wind_speed"].toDouble(),
        windDeg: json["wind_deg"],
        windGust: json["wind_gust"].toDouble(),
        weather: List<WeatherElement>.from(
            json["weather"].map((x) => WeatherElement.fromJson(x))),
        pop: json["pop"].toDouble(),
        rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
      );

  Map<String, dynamic> toJson() => {
        "dt": dt,
        "temp": temp,
        "feels_like": feelsLike,
        "pressure": pressure,
        "humidity": humidity,
        "dew_point": dewPoint,
        "uvi": uvi,
        "clouds": clouds,
        "visibility": visibility,
        "wind_speed": windSpeed,
        "wind_deg": windDeg,
        "wind_gust": windGust,
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "pop": pop,
        "rain": rain == null ? null : rain.toJson(),
      };
}

class Rain {
  Rain({
    this.the1H,
  });

  double the1H;

  factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        the1H: json["1h"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "1h": the1H,
      };
}

class WeatherElement {
  WeatherElement({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  int id;
  Main main;
  Description description;
  String icon;

  factory WeatherElement.fromJson(Map<String, dynamic> json) => WeatherElement(
        id: json["id"],
        main: mainValues.map[json["main"]],
        description: descriptionValues.map[json["description"]],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": mainValues.reverse[main],
        "description": descriptionValues.reverse[description],
        "icon": icon,
      };
}

enum Description {
  OVERCAST_CLOUDS,
  LIGHT_RAIN,
  BROKEN_CLOUDS,
  SCATTERED_CLOUDS,
  CLEAR_SKY
}

final descriptionValues = EnumValues({
  "broken clouds": Description.BROKEN_CLOUDS,
  "clear sky": Description.CLEAR_SKY,
  "light rain": Description.LIGHT_RAIN,
  "overcast clouds": Description.OVERCAST_CLOUDS,
  "scattered clouds": Description.SCATTERED_CLOUDS
});

enum Main { CLOUDS, RAIN, CLEAR }

final mainValues =
    EnumValues({"Clear": Main.CLEAR, "Clouds": Main.CLOUDS, "Rain": Main.RAIN});

class Minutely {
  Minutely({
    this.dt,
    this.precipitation,
  });

  int dt;
  int precipitation;

  factory Minutely.fromJson(Map<String, dynamic> json) => Minutely(
        dt: json["dt"],
        precipitation: json["precipitation"],
      );

  Map<String, dynamic> toJson() => {
        "dt": dt,
        "precipitation": precipitation,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
