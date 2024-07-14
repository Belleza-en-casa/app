// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/pages/login/components/form_component.dart';
import 'package:belleza_en_casa/src/ui/pages/login/components/recovery_component.dart';
import 'package:belleza_en_casa/src/ui/pages/login/components/register_component.dart';
import 'package:belleza_en_casa/src/ui/pages/login/components/tittle_component.dart';
import 'package:belleza_en_casa/src/ui/views/backGround_view.dart';
import 'package:belleza_en_casa/src/ui/views/logo_view.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:belleza_en_casa/src/ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/login/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Size _size;
  late LoginCubit _cubit;
  @override
  void initState() {
    super.initState();

    _cubit = LoginCubit(context);
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => _cubit,
      child: BaseWidget(
        padding: 0,
        child: _body(),
      ),
    );
  }

  Widget _body() => Stack(
        children: [
          BackGroundView(),
          Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: _size.height * .1),
                  height: _size.height * .1,
                  child: logo()),
              const SizedBox(height: 20),
              TittleComponent(),
              const SizedBox(height: 20),
              _card(),
              SizedBox(height: _size.height * .1),
              const RegisterComponent(),
            ],
          )
        ],
      );

  Widget _card() => Container(
      margin: EdgeInsets.symmetric(horizontal: _size.width * .1),
      child: Center(
          child: CardWidget(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 40),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FormComponent(),
                        const RecoveryComponent(),
                        _btn()
                      ])))));

  Widget _btn() => BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Center(
              child: SizedBox(
                  width: _size.width * .55,
                  child: BtnWidget.btn(
                    onPressed: () {},
                    title: "Ingresar",
                    enabled: state.btnEnabled,
                  )));
        },
      );
}
