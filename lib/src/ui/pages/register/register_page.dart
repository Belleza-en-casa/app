// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/cubits/registro/registro_cubit.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profile_info/splash_profile.dart';
import 'package:belleza_en_casa/src/ui/pages/register/components/form_component.dart';
import 'package:belleza_en_casa/src/ui/pages/register/components/legal_check_component.dart';
import 'package:belleza_en_casa/src/ui/views/backGround_view.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/btn_widet.dart';
import '../../widgets/card_widget.dart';
import 'components/tittle_component.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late Size _size;

  late RegistroCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = RegistroCubit(context);
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => _cubit,
      child: BaseWidget(padding: 0, child: _body(context)),
    );
  }

  Widget _body(BuildContext context) => Stack(
        children: [
          BackGroundView(),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                TittleComponent(),
                const SizedBox(height: 20),
                _card(context),
                SizedBox(height: _size.height * .1),
              ],
            ),
          ),
          Positioned(
              right: 0,
              child: IconButton(
                  onPressed: () {
                    _cubit.goBack();
                  },
                  icon: const Icon(Icons.close_outlined, color: Colors.white)))
        ],
      );

  Widget _card(BuildContext context) => Container(
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
                        const LegalCheckComponent(),
                        _btn(context)
                      ])))));

  Widget _btn(BuildContext context) => BlocBuilder<RegistroCubit, RegistroState>(
        builder: (context, state) {
          return Center(
              child: SizedBox(
                  width: _size.width * .55,
                  child: BtnWidget.btn(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SplashProfile()));
                      },
                      title: "Crear cuenta",
                      enabled: state.btnEnabled)));
        },
      );
}
