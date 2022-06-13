import 'dart:developer';
import 'package:desafio_flutter/model/cep/cep_model.dart';
import 'package:dio/dio.dart';

class CepClient {
  final client = Dio();

  Future<CepModel> getCepEvento(String cep) async {
    try {
      final response = await client.get('https://viacep.com.br/ws/$cep/json/');
      inspect(response.data);

      return CepModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }
}
