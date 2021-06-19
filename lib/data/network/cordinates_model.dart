import 'dart:convert';

List<Coordinates> coordinatesFromJson(String str) => List<Coordinates>.from(
    json.decode(str).map((x) => Coordinates.fromJson(x)));

String coordinatesToJson(List<Coordinates> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Coordinates {
  Coordinates({
    this.name,
    this.lat,
    this.lon,
  });

  String name;
  double lat;
  double lon;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        name: json["name"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lat": lat,
        "lon": lon,
      };
}
