import 'dart:developer';

import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:dio/dio.dart';

class AgendaClient {
  final client = Dio();

  Future<List<EventModel>> getListaEventosAgenda() async {
    try {
      final response = await client
          .get('https://628e3133368687f3e7121f1a.mockapi.io/api/v1/events');

      // inspect(response.data);
      return List.from(response.data)
          .map((event) => EventModel.fromJson(event))
          .toList();
    } catch (e) {
      throw e.toString();
    }
  }
}
