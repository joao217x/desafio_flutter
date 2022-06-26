import 'package:desafio_flutter/model/event/address_model.dart';

class EventModel {
  final int id;
  final String name;
  final String description;
  final String startTime;
  final String endTime;
  final AddressModel address;

  EventModel({
    required this.id,
    required this.name,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.address,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      name: json['event_name'],
      description: json['event_description'],
      startTime: json['start_time'],
      endTime: json['end_time'],
      address: AddressModel.fromJson(json['address']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'event_name': name,
        'event_description': description,
        'start_time': startTime,
        'end_time': endTime,
        'address': address,
      };
}
