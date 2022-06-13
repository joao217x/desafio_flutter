class EventModel {
  final String name;
  final String description;
  final String startTime;
  final String endTime;
  final String address;

  EventModel({
    required this.name,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.address,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      name: json['event_name'],
      description: json['event_description'],
      startTime: json['start_Time'],
      endTime: json['end_Time'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() => {
        'event_name': name,
        'event_description': description,
        'start_Time': startTime,
        'end_Time': endTime,
        'address': address,
      };
}
