// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../widgets/input_widget.dart';

class FormComponent extends StatelessWidget {
  FormComponent({super.key});

  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        InputWidget(
            hintText: "Nombres",
            prefixIcon: const Icon(Icons.person_outline_sharp),
            controller: TextEditingController(),
            onChanged: (e) {}),
        SizedBox(height: _size.height * .02),
        InputWidget(
            hintText: "Apellidos",
            prefixIcon: const Icon(Icons.person_outline_sharp),
            controller: TextEditingController(),
            onChanged: (e) {}),
        SizedBox(height: _size.height * .02),
        InputWidget(
          textInputType: TextInputType.emailAddress,
            hintText: "Correo electrónico",
            prefixIcon: const Icon(Icons.email_outlined),
            controller: TextEditingController(),
            onChanged: (e) {}),
        SizedBox(height: _size.height * .02),
        InputWidget(
            obscureText: true,
            hintText: "Contraseña",
            prefixIcon: const Icon(Icons.lock_outlined),
            controller: TextEditingController(),
            suffixIcon: IconButton(
                icon: const Icon(Icons.visibility_off_outlined),
                onPressed: () {}),
            onChanged: (e) {}),
        SizedBox(height: _size.height * .02),
        InputWidget(
            obscureText: true,
            suffixIcon: IconButton(
                icon: const Icon(Icons.visibility_off_outlined),
                onPressed: () {}),
            hintText: "Confirmar contraseña",
            prefixIcon: const Icon(Icons.lock_outlined),
            controller: TextEditingController(),
            onChanged: (e) {}),
      ],
    );
  }
}
