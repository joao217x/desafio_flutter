import 'package:desafio_flutter/helper/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'controller.g.dart';

// ignore: library_private_types_in_public_api
class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  //SPLASH SCREEN

  //LOGIN SCREEN

  //FORGET PASSWORD SCREEN

  //NEW EVENT SCREEN

  //EVENT LIST SCREEN

  //SOFT EVENT LIST SCREEN

  //SOFT EVENT INFO SCREEN

  //SOFT EVENT PLACE SCREEN

  //MY EVENT LIST SCREEN

  //MY EVENT INFO SCREEN

  //PASSWORD FIELD WIDGET
  @observable
  bool isHidden = true;

  @action
  void togglePasswordVisibility() {
    isHidden = !isHidden;
  }
}
