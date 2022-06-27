import 'dart:developer';
import 'package:desafio_flutter/model/cep/cep_model.dart';
import 'package:dio/dio.dart';

class CepClient {
  final client = Dio();

  Future<CepModel> getCepClient(String cep) async {
    try {
      final result = await client.get('https://viacep.com.br/ws/$cep/json/');
      inspect(result.data);

      return CepModel.fromJson(result.data);
    } catch (e) {
      throw e;
    }
  }
}
