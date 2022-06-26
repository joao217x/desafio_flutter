// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _ControllerBase, Store {
  late final _$userAtom = Atom(name: '_ControllerBase.user', context: context);

  @override
  String get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(String value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_ControllerBase.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$pwRecoverAtom =
      Atom(name: '_ControllerBase.pwRecover', context: context);

  @override
  String get pwRecover {
    _$pwRecoverAtom.reportRead();
    return super.pwRecover;
  }

  @override
  set pwRecover(String value) {
    _$pwRecoverAtom.reportWrite(value, super.pwRecover, () {
      super.pwRecover = value;
    });
  }

  late final _$eventNameAtom =
      Atom(name: '_ControllerBase.eventName', context: context);

  @override
  String get eventName {
    _$eventNameAtom.reportRead();
    return super.eventName;
  }

  @override
  set eventName(String value) {
    _$eventNameAtom.reportWrite(value, super.eventName, () {
      super.eventName = value;
    });
  }

  late final _$eventDescAtom =
      Atom(name: '_ControllerBase.eventDesc', context: context);

  @override
  String get eventDesc {
    _$eventDescAtom.reportRead();
    return super.eventDesc;
  }

  @override
  set eventDesc(String value) {
    _$eventDescAtom.reportWrite(value, super.eventDesc, () {
      super.eventDesc = value;
    });
  }

  late final _$dateAtom = Atom(name: '_ControllerBase.date', context: context);

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$timeStartAtom =
      Atom(name: '_ControllerBase.timeStart', context: context);

  @override
  String get timeStart {
    _$timeStartAtom.reportRead();
    return super.timeStart;
  }

  @override
  set timeStart(String value) {
    _$timeStartAtom.reportWrite(value, super.timeStart, () {
      super.timeStart = value;
    });
  }

  late final _$timeEndAtom =
      Atom(name: '_ControllerBase.timeEnd', context: context);

  @override
  String get timeEnd {
    _$timeEndAtom.reportRead();
    return super.timeEnd;
  }

  @override
  set timeEnd(String value) {
    _$timeEndAtom.reportWrite(value, super.timeEnd, () {
      super.timeEnd = value;
    });
  }

  late final _$cepAtom = Atom(name: '_ControllerBase.cep', context: context);

  @override
  String get cep {
    _$cepAtom.reportRead();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.reportWrite(value, super.cep, () {
      super.cep = value;
    });
  }

  late final _$streetAtom =
      Atom(name: '_ControllerBase.street', context: context);

  @override
  String get street {
    _$streetAtom.reportRead();
    return super.street;
  }

  @override
  set street(String value) {
    _$streetAtom.reportWrite(value, super.street, () {
      super.street = value;
    });
  }

  late final _$numberAtom =
      Atom(name: '_ControllerBase.number', context: context);

  @override
  String get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  late final _$neighbourhoodAtom =
      Atom(name: '_ControllerBase.neighbourhood', context: context);

  @override
  String get neighbourhood {
    _$neighbourhoodAtom.reportRead();
    return super.neighbourhood;
  }

  @override
  set neighbourhood(String value) {
    _$neighbourhoodAtom.reportWrite(value, super.neighbourhood, () {
      super.neighbourhood = value;
    });
  }

  late final _$cityAtom = Atom(name: '_ControllerBase.city', context: context);

  @override
  String get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$eventModelAtom =
      Atom(name: '_ControllerBase.eventModel', context: context);

  @override
  EventModel? get eventModel {
    _$eventModelAtom.reportRead();
    return super.eventModel;
  }

  @override
  set eventModel(EventModel? value) {
    _$eventModelAtom.reportWrite(value, super.eventModel, () {
      super.eventModel = value;
    });
  }

  late final _$eventModelListAtom =
      Atom(name: '_ControllerBase.eventModelList', context: context);

  @override
  List<EventModel>? get eventModelList {
    _$eventModelListAtom.reportRead();
    return super.eventModelList;
  }

  @override
  set eventModelList(List<EventModel>? value) {
    _$eventModelListAtom.reportWrite(value, super.eventModelList, () {
      super.eventModelList = value;
    });
  }

  late final _$isHiddenAtom =
      Atom(name: '_ControllerBase.isHidden', context: context);

  @override
  bool get isHidden {
    _$isHiddenAtom.reportRead();
    return super.isHidden;
  }

  @override
  set isHidden(bool value) {
    _$isHiddenAtom.reportWrite(value, super.isHidden, () {
      super.isHidden = value;
    });
  }

  late final _$logInAsyncAction =
      AsyncAction('_ControllerBase.logIn', context: context);

  @override
  Future<UserCredential> logIn(
      {required String email, required String password}) {
    return _$logInAsyncAction
        .run(() => super.logIn(email: email, password: password));
  }

  late final _$getListaEventosControllerAsyncAction = AsyncAction(
      '_ControllerBase.getListaEventosController',
      context: context);

  @override
  Future<List<EventModel>?> getListaEventosController() {
    return _$getListaEventosControllerAsyncAction
        .run(() => super.getListaEventosController());
  }

  late final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase', context: context);

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
password: ${password},
pwRecover: ${pwRecover},
eventName: ${eventName},
eventDesc: ${eventDesc},
date: ${date},
timeStart: ${timeStart},
timeEnd: ${timeEnd},
cep: ${cep},
street: ${street},
number: ${number},
neighbourhood: ${neighbourhood},
city: ${city},
eventModel: ${eventModel},
eventModelList: ${eventModelList},
isHidden: ${isHidden}
    ''';
  }
}
