import 'package:desafio_flutter/model/event/location_model.dart';

class AddressModel {
  final int id;
  final String rua; //street
  final int numero; //number
  final String cidade; //city
  final String uf; //uf
  final LocationModel location;

  AddressModel({
    required this.id,
    required this.rua,
    required this.numero,
    required this.cidade,
    required this.uf,
    required this.location,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'],
      rua: json['street'],
      numero: json['numero'],
      cidade: json['city'],
      uf: json['uf'],
      location: LocationModel.fromJson(json['location']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'street': rua,
        'numero': numero,
        'city': cidade,
        'uf': uf,
        'location': location,
      };
}
