// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TittleComponent extends StatelessWidget {
  TittleComponent({super.key});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Text("Inicio de sesión",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: _size.height * .02));
  }
}
