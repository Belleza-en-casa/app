// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/core/global/global.dart';
import 'package:belleza_en_casa/src/ui/cubits/select_user/selec_user_cubit.dart';
import 'package:belleza_en_casa/src/ui/pages/on_boarding/on_boarding_page.dart';
import 'package:belleza_en_casa/src/ui/pages/select_user/components/card_component.dart';
import 'package:belleza_en_casa/src/ui/pages/select_user/components/informativo_component.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/saludo_component.dart';

class SelectUserPage extends StatelessWidget {
  SelectUserPage({super.key});

  late Size _size;
  final _cubit = SelectUserCubit();

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => _cubit,
      child: BaseWidget(child: _body(context)),
    );
  }

  Widget _body(BuildContext context) =>
      BlocBuilder<SelectUserCubit, SelectUserState>(
        builder: (context, state) {
          return Column(
            children: [
              SaludoComponente(),
              InformativoComponent(),
              Container(
                margin: EdgeInsets.only(top: _size.height * .1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardComponent(
                      enabledBorder: state.userType == UserType.profesional,
                      image: "assets/jpg/profesional.jpg",
                      type: "Profesional",
                      action: () {
                        _cubit.addUserType(UserType.profesional);
                      },
                    ),
                    CardComponent(
                      enabledBorder: state.userType == UserType.cliente,
                      image: "assets/jpg/cliente.jpg",
                      type: "Cliente",
                      action: () {
                        _cubit.addUserType(UserType.cliente);
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _size.height * .1),
                child: BtnWidget.btn(
                    onPressed: () {
                      setUserType = state.userType;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => OnboardingPage()));
                    },
                    title: "Continuar",
                    enabled: state.userType != UserType.none),
              )
            ],
          );
        },
      );
}
