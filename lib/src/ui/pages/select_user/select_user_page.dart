// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/pages/on_boarding/on_boarding_page.dart';
import 'package:belleza_en_casa/src/ui/pages/select_user/components/card_component.dart';
import 'package:belleza_en_casa/src/ui/pages/select_user/components/informativo_component.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';

import 'components/saludo_component.dart';

class SelectUserPage extends StatelessWidget {
  SelectUserPage({super.key});

  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BaseWidget(child: _body(context));
  }

  Widget _body(BuildContext context) => Column(
        children: [
          SaludoComponente(),
          InformativoComponent(),
          Container(
            margin: EdgeInsets.only(top: _size.height * .1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CardComponent(), CardComponent()],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _size.height * .1),
            child: BtnWidget.btn(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => OnboardingPage()));
                },
                title: "Continuar",
                enabled: true),
          )
        ],
      );
}
