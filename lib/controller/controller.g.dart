// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _ControllerBase, Store {
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
isHidden: ${isHidden}
    ''';
  }
}
