import 'package:belleza_en_casa/src/ui/pages/register/register_page.dart';
import 'package:flutter/material.dart';

class RegisterComponent extends StatelessWidget {
  const RegisterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> const RegisterPage()));
        },
        child: const Text(
          "Crear cuenta",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ));
  }
}
