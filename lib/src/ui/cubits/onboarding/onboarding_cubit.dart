
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  ///-----------Repositorios--------------

  ///-----------Constructor--------------

  OnboardingCubit(BuildContext context)
      : super(OnboardingState(
            buildContext: context, ctrl: PageController(initialPage: 0)));

  ///-----------Variables--------------

  ///-----------eventos--------------

  void addCurrentIndex(int index) {
    state.ctrl.jumpToPage(index);
    emit(state.copyWith(currentIndex: index,));
  }

  ///-----------peticiones--------------
  ///-----------Otros--------------
  ///-----------Navegacion--------------
}
