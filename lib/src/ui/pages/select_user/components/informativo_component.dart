// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InformativoComponent extends StatelessWidget {
  InformativoComponent({super.key});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.only(top: _size.height * .1, left: 20, right: 20),
      child: const Text(
        "Antes de comenzar, cuéntanos quién eres. ¿Te gusta cuidar de ti mismo o prefieres deleitar a otros con tus habilidades de belleza?",
        textAlign: TextAlign.center,
      ),
    );
  }
}
