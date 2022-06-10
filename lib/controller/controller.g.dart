// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _ControllerBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$eventControllerAsyncAction =
      AsyncAction('_ControllerBase.eventController', context: context);

  @override
  Future<EventModel> eventController() {
    return _$eventControllerAsyncAction.run(() => super.eventController());
  }

  late final _$cepControllerAsyncAction =
      AsyncAction('_ControllerBase.cepController', context: context);

  @override
  Future<CepModel> cepController() {
    return _$cepControllerAsyncAction.run(() => super.cepController());
  }

  late final _$_ControllerBaseActionController =
      ActionController(name: '_ControllerBase', context: context);

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_ControllerBaseActionController.startAction(
        name: '_ControllerBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
