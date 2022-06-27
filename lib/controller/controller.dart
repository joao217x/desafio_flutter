import 'dart:developer';

import 'package:desafio_flutter/model/event/event_model.dart';
import 'package:desafio_flutter/service/agenda_client.dart';
import 'package:desafio_flutter/service/firebase_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

// ignore: library_private_types_in_public_api
class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  //SPLASH SCREEN

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
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      setResetResultState(false);
      resetResult = resetResultState;
    }
  }
  //#############################################

  //NEW EVENT SCREEN
  @observable
  String eventName = '';

  @observable
  String eventDesc = '';

  @observable
  String date = '';

  @observable
  String timeStart = '';

  @observable
  String timeEnd = '';

  @observable
  String cep = '';

  @observable
  String street = '';

  @observable
  String number = '';

  @observable
  String neighbourhood = '';

  @observable
  String city = '';
  //#############################################

  //TABS SCREEN

  //#############################################

  //SOFT AND MY EVENT TABS SCREEN

  //#############################################

  //SOFT AND MY EVENT LIST TAB
  final AgendaClient agendaClient = AgendaClient();

  @observable
  List<EventModel> eventModel = [];

  @observable
  List<EventModel>? eventModelList;

  @action
  Future<List<EventModel>?> getListaEventosController() async {
    try {
      eventModelList = await agendaClient.getListaEventos();
      return eventModelList;
    } catch (_) {
      throw 'erro';
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
