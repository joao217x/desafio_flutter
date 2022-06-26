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

  //SOFT EVENT TABS SCREEN

  //#############################################

  //SOFT EVENT LIST TAB
  final AgendaClient agendaClient = AgendaClient();

  @observable
  EventModel? eventModel;

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

  //SOFT EVENT INFO TAB

  //#############################################

  //SOFT EVENT PLACE TAB

  //#############################################

  //MY EVENT TABS SCREEN

  //#############################################

  //MY EVENT LIST TAB

  //#############################################

  //MY EVENT INFO TAB

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
