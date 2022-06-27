import 'dart:developer';

import 'package:desafio_flutter/model/cep/cep_model.dart';
import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:desafio_flutter/service/agenda_client.dart';
import 'package:desafio_flutter/service/cep_client.dart';
import 'package:desafio_flutter/service/firebase_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

// ignore: library_private_types_in_public_api
class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  //SPLASH SCREEN
  @observable
  bool isLogged = false;
  @action
  void setIsLogged(bool value) => isLogged = value;

  @action
  void checkLogged() {
    if (FirebaseAuth.instance.currentUser != null) {
      setIsLogged(true);
    } else {
      setIsLogged(false);
    }
  }

  //#############################################

  //LOGIN AND FORGET PASSWORD SCREEN
  FirebaseClient firebaseClient = FirebaseClient();

  @observable
  String user = '';

  @observable
  String password = '';

  @observable
  String pwRecover = '';

  @observable
  bool resetResultState = false;

  @action
  Future<void> logout() async {
    await firebaseClient.logoutFirebase();
    setIsLogged(false);
  }

  @action
  void setResetResultState(bool value) => resetResultState = value;

  @action
  Future<UserCredential> logIn({
    required String email,
    required String password,
  }) async {
    try {
      return await firebaseClient.logInFirebase(
        email: email,
        password: password,
      );
    } catch (e) {
      throw e;
    }
  }

  Future<void> pwReset({required email, required bool resetResult}) async {
    try {
      await firebaseClient.pwResetFirebase(email: pwRecover);
      setResetResultState(true);
      resetResult = resetResultState;
    } catch (e) {
      log(e.toString());
      setResetResultState(false);
      resetResult = resetResultState;
    }
  }
  //#############################################

  //NEW EVENT SCREEN

  //nome
  @observable
  String _eventName = '';
  @action
  void setEventName(String value) => _eventName = value;

  //descricao
  @observable
  String _eventDesc = '';
  @action
  void setEventDesc(String value) => _eventDesc = value;

  //data
  @observable
  String _date = '';
  @action
  void setDate(String value) => _date = value;

  //inicio
  @observable
  String _timeStart = '';
  @action
  void setTimeStart(String value) => _timeStart = value;

  //fim
  @observable
  String _timeEnd = '';
  @action
  void setTimeEnd(String value) => _timeEnd = value;

  //cep
  @observable
  String cep = '';
  @action
  String setCep(String value) => cep = value;

  //rua
  @observable
  String _street = '';
  @action
  String setStreet() => _street = cepResult?.rua ?? '';

  //numero
  @observable
  String _number = '';
  @action
  void setNumber(String value) => _number = value;

  //bairro
  @observable
  String _neighbourhood = '';
  @action
  String setNeighbourhood() => _neighbourhood = cepResult?.bairro ?? '';

  //cidade
  @observable
  String _city = '';
  @action
  String setCity() => _city = cepResult?.cidade ?? '';

  //search cep
  CepClient cepClient = CepClient();

  @observable
  CepModel? cepModel;

  @observable
  CepModel? cepResult;

  @action
  Future<CepModel?> getCep(String cep) async {
    try {
      cepResult = await cepClient.getCepClient(cep);
      return cepResult;
    } catch (_) {
      cepResult = null;
    }
  }
  //#############################################

  //TABS SCREEN

  //#############################################

  //SOFT AND MY EVENT TABS SCREEN

  //#############################################

  //SOFT AND MY EVENT LIST TAB
  final AgendaClient agendaClient = AgendaClient();

  //event list
  @observable
  List<EventModel> eventList = [];
  @action
  void setEventList(List<EventModel> value) => eventList = value;

  //loading
  @observable
  bool isLoading = false;
  @action
  void setIsLoading(bool value) => isLoading = value;

  //error
  @observable
  bool isError = false;
  @action
  void setIsError(bool value) => isError = value;

  @action
  void initLoading() {
    setIsError(false);
    setIsLoading(true);
  }

  @action
  void endLoading() {
    setIsError(false);
    setIsLoading(false);
  }

  @action
  Future<void> getListaEventos() async {
    try {
      initLoading();

      final result = await agendaClient.getListaEventosAgenda();
      setEventList(result);

      endLoading();
      inspect(eventList);
    } catch (e) {
      setIsError(true);
      throw e.toString();
    }
  }
  //#############################################

  //SOFT AND MY EVENT INFO TAB

  //#############################################

  //SOFT EVENT PLACE TAB

  //#############################################

  //PASSWORD FIELD WIDGET
  @observable
  bool isHidden = true;

  @action
  void togglePasswordVisibility() {
    isHidden = !isHidden;
  }
  //#############################################
}
