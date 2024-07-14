import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  ///---Repositorios------

  ///---Constructor------

  LoginCubit(BuildContext context) : super(LoginState(context: context));

  ///---Variables------

  ///[user] para el campo de texto usuario
  final user = TextEditingController();

  ///[pass] para el campo de texto contraseña
  final pass = TextEditingController();

  ///---Eventos------

  ///[btnEnabled] habilita o inhabilita el boton de ingresar
  void btnEnabled() {
    bool e = false;
    if (user.text.isNotEmpty && pass.text.isNotEmpty) {
      e = true;
    }
    emit(state.copyWith(btnEnabled: e));
  }

  ///[showPass] añade el evento de mostrar u ocultar contraseña
  void showPass(bool e) {
    log("$e ..");
    emit(state.copyWith(showPassword: e));
  }

  ///---Peticiones------

  ///---Navegacion------

  ///---otros------
}
