import 'package:desafio_flutter/model/cep_model.dart';
import 'package:desafio_flutter/model/event_model.dart';
import 'package:desafio_flutter/service/agenda_client.dart';
import 'package:desafio_flutter/service/cep_client.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  final AgendaClient agendaClient = AgendaClient();
  final CepClient cepClient = CepClient();

  @observable
  bool isLoading = false;

  @action
  void setLoading (bool value) {
    isLoading = value;
  }


  // LISTA DE EVENTOS
  @action
  Future<EventModel> eventController() async {
    try {
      setLoading(true);
      final result = await agendaClient.listaEventos();
      setLoading(false);
      return result;
    } catch (e) {
      setLoading(false);
      throw e;
    }
  }


  // CEP
  @action
  Future<CepModel> cepController() async {
    try {
      setLoading(true);
      final result = await cepClient.cepEvento('cep');
      setLoading(false);
      return result;
    } catch (e) {
      setLoading(false);
      throw e;
    }
  }
}
