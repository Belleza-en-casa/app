// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SaludoComponente extends StatelessWidget {
   SaludoComponente({super.key});

  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return  Center(
        child: Column(
          children: [
            SizedBox(
              height: _size.height * .04,
            ),
            Text(
              "¡Hola!",
              style: TextStyle(fontSize: _size.height * .024),
            ),
            Text(
              "¡Bienvenido a Belleza en Casa!",
              style: TextStyle(fontSize: _size.height * .024),
            ),
          ],
        ),
      );
  }
}