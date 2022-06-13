class LocationModel {
  final String lat;
  final String long;

  LocationModel({
    required this.lat,
    required this.long,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      lat: json['lat'],
      long: json['long'],
    );
  }

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
      };
}
