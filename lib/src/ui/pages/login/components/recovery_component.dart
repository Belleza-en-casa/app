import 'package:flutter/material.dart';

class RecoveryComponent extends StatelessWidget {
  const RecoveryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        "Olvide mi contraseña",
        style: TextStyle(decoration: TextDecoration.underline),
      ));
  }
}