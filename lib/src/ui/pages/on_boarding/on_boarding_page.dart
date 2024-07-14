// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/core/global/global.dart';
import 'package:belleza_en_casa/src/ui/cubits/onboarding/onboarding_cubit.dart';
import 'package:belleza_en_casa/src/ui/cubits/select_user/selec_user_cubit.dart';
import 'package:belleza_en_casa/src/ui/pages/login/login_page.dart';
import 'package:belleza_en_casa/src/ui/pages/on_boarding/components/base_onboarding_component.dart';
import 'package:belleza_en_casa/src/ui/pages/on_boarding/components/indicator_component.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late Size _size;

  late OnboardingCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = OnboardingCubit(context);
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => _cubit,
      child: BaseWidget(
          child: Column(
        children: [
          SizedBox(
            height: _size.height * .65,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return PageView(
                  controller: state.ctrl,
                  onPageChanged: (i) {
                    _cubit.addCurrentIndex(i);
                  },
                  children: [
                    BaseOnboardingComponent(
                        img: getUserType == UserType.cliente ? "" : "",
                        txt1: getUserType == UserType.cliente
                            ? "¡Bienvenido a Belleza en Casa!"
                            : "¡Únete a Belleza en Casa!",
                        txt2: getUserType == UserType.cliente
                            ? "Descubre la belleza en tu hogar."
                            : "Ofrece tus servicios desde casa."),
                    BaseOnboardingComponent(
                        img: getUserType == UserType.cliente ? "" : "",
                        txt1: getUserType == UserType.cliente
                            ? "¡Reserva tu cita de belleza!"
                            : "¡Amplia tu clientela!",
                        txt2: getUserType == UserType.cliente
                            ? "Encuentra profesionales cercanos y reserva."
                            : "Registrate y gestiona tus citas."),
                    BaseOnboardingComponent(
                        img: getUserType == UserType.cliente ? "" : "",
                        txt1: getUserType == UserType.cliente
                            ? "Inspírate con nuestra galería."
                            : "Destaca tus habilidades únicas",
                        txt2: getUserType == UserType.cliente
                            ? "Descubre nuevos looks para ti."
                            : "Completa tu perfil profesional."),
                    BaseOnboardingComponent(
                        img: getUserType == UserType.cliente ? "" : "",
                        txt1: getUserType == UserType.cliente
                            ? "¡Prepárate para lucir radiante!"
                            : "¡Preparate para crecer profesionalmente!",
                        txt2: getUserType == UserType.cliente
                            ? "Reserva tu cita y disfruta."
                            : "Conéctate con nuevos cliente ahora."),
                  ],
                );
              },
            ),
          ),
          BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IndicatorComponent(enabled: state.currentIndex == 0),
                  IndicatorComponent(enabled: state.currentIndex == 1),
                  IndicatorComponent(enabled: state.currentIndex == 2),
                  IndicatorComponent(enabled: state.currentIndex == 3),
                ],
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, state) {
              return BtnWidget.btn(
                  onPressed: () {
                    if (state.currentIndex < 3) {
                      _cubit.addCurrentIndex(state.currentIndex + 1);
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LoginPage()));
                    }
                  },
                  title: "Continuar",
                  enabled: true);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: const Text("Omitir"))
        ],
      )),
    );
  }
}
