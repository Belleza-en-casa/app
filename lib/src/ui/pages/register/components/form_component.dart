// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/cubits/registro/registro_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/input_widget.dart';

class FormComponent extends StatelessWidget {
  FormComponent({super.key});

  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BlocBuilder<RegistroCubit, RegistroState>(
      builder: (context, state) {
        final c = context.read<RegistroCubit>();
        return Column(
          children: [
            InputWidget(
                hintText: "Nombres",
                prefixIcon: const Icon(Icons.person_outline_sharp),
                controller: c.name,
                onChanged: (e) {
                  c.btnEnabled();
                }),
            SizedBox(height: _size.height * .02),
            InputWidget(
                hintText: "Apellidos",
                prefixIcon: const Icon(Icons.person_outline_sharp),
                controller: c.lastName,
                onChanged: (e) {
                    c.btnEnabled();
                }),
            SizedBox(height: _size.height * .02),
            InputWidget(
                textInputType: TextInputType.emailAddress,
                hintText: "Correo electrónico",
                prefixIcon: const Icon(Icons.email_outlined),
                controller: c.email,
                onChanged: (e) {
                    c.btnEnabled();
                }),
            SizedBox(height: _size.height * .02),
            InputWidget(
                obscureText: !state.showPassword1,
                hintText: "Contraseña",
                prefixIcon: const Icon(Icons.lock_outlined),
                controller: c.pass,
                suffixIcon: IconButton(
                    icon:  !state.showPassword1
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      c.showPass1(!state.showPassword1);
                    }),
                onChanged: (e) {
                    c.btnEnabled();
                }),
            SizedBox(height: _size.height * .02),
            InputWidget(
                obscureText: !state.showPassword2,
                suffixIcon: IconButton(
                    icon:!state.showPassword2
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      c.showPass2(!state.showPassword2);
                    }),
                hintText: "Confirmar contraseña",
                prefixIcon: const Icon(Icons.lock_outlined),
                controller: c.pass2,
                onChanged: (e) {
                    c.btnEnabled();
                }),
          ],
        );
      },
    );
  }
}
