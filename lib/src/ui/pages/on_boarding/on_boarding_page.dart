// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/core/global/global.dart';
import 'package:belleza_en_casa/src/ui/cubits/select_user/selec_user_cubit.dart';
import 'package:belleza_en_casa/src/ui/pages/login/login_page.dart';
import 'package:belleza_en_casa/src/ui/pages/on_boarding/components/base_onboarding_component.dart';
import 'package:belleza_en_casa/src/ui/pages/on_boarding/components/indicator_component.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  late Size _size;
  OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BaseWidget(
        child: Column(
      children: [
        SizedBox(
          height: _size.height * .65,
          child: PageView(
            children: [
              BaseOnboardingComponent(
                  img: "",
                  txt1: getUserType==UserType.cliente?"": "¡Únete a Belleza en Casa!",
                  txt2: "Ofrece tus servicios desde casa."),
              BaseOnboardingComponent(
                  img: "",
                  txt1: "¡Amplia tu clientela!",
                  txt2: "Registrate y gestiona tus citas."),
              BaseOnboardingComponent(
                  img: "",
                  txt1: "Destaca tus habilidades únicas",
                  txt2: "Completa tu perfil profesional."),
              BaseOnboardingComponent(
                  img: "",
                  txt1: "¡Preparate para crecer profesionalmente!",
                  txt2: "Conéctate con nuevos cliente ahora."),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IndicatorComponent(enabled: true),
            IndicatorComponent(enabled: false),
            IndicatorComponent(enabled: false),
            IndicatorComponent(enabled: false),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        BtnWidget.btn(onPressed: () {}, title: "Continuar", enabled: true),
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
    ));
  }
}
