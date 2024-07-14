import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'registro_state.dart';

class RegistroCubit extends Cubit<RegistroState> {
  ///---Repositorios------

  ///---Constructor------
  RegistroCubit(BuildContext context) : super(RegistroState(context: context));

  ///---Variables------

  ///[name] para el campo de texto nombre
  final name = TextEditingController();

  ///[lastName] para el campo de texto apellido
  final lastName = TextEditingController();

  ///[email] para el campo de texto correo electronico
  final email = TextEditingController();

  ///[pass] para el campo de texto contraseña
  final pass = TextEditingController();

  ///[pass2] para el campo de texto contraseña
  final pass2 = TextEditingController();

  ///---Eventos---------------------------------

  ///[btnEnabled] habilita o inhabilita el boton de ingresar
  void btnEnabled() {
    bool e = false;
    if (pass.text.isNotEmpty &&
        name.text.isNotEmpty &&
        lastName.text.isNotEmpty &&
        email.text.isNotEmpty &&
        pass2.text.isNotEmpty &&
        state.term1 &&
        state.term2) {
      e = true;
    }
    emit(state.copyWith(btnEnabled: e));
  }

  ///[showPass1] añade el evento de mostrar u ocultar contraseña
  void showPass1(bool e) {
    emit(state.copyWith(showPassword1: e));
  }

  ///[showPass2] añade el evento de mostrar u ocultar contraseña
  void showPass2(bool e) {
    emit(state.copyWith(showPassword2: e));
  }

  ///[addTerm1] añade el evento de mostrar u ocultar contraseña
  void addTerm1(bool e) {
    emit(state.copyWith(term1: e));
  }

  ///[addTerm2] añade el evento de mostrar u ocultar contraseña
  void addTerm2(bool e) {
    log("$e ---");
    emit(state.copyWith(term2: e));
  }

  ///---Peticiones------

  ///---Navegacion------

  void goBack() {
    Navigator.pop(state.context);
  }

  ///---otros------
}
