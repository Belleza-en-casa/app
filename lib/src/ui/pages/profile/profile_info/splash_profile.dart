// ignore_for_file: prefer_const_constructors

import 'package:belleza_en_casa/src/ui/pages/profile/profile_page.dart';
import 'package:belleza_en_casa/src/ui/views/logo_view.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';

class SplashProfile extends StatelessWidget {
  const SplashProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(child: _body(context));
  }

  Widget _body(BuildContext context) => Column(
        children: [
          logo(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                  "Completa tu perfil para que los clientes reconozcan tu talento. ¡Listo para comenzar!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.sizeOf(context).height * .023))),
          const SizedBox(height: 40),
          BtnWidget.btn(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ProfilePage(viewType: ViewType.addInfoProfesional,)));
              },
              title: "Continuar",
              enabled: true),
          const SizedBox(height: 40),
          TextButton(
              onPressed: () {},
              child: const Text("En otro momento",
                  style: TextStyle(decoration: TextDecoration.underline)))
        ],
      );
}
