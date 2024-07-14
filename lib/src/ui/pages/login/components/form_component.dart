// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/cubits/login/login_cubit.dart';
import 'package:belleza_en_casa/src/ui/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormComponent extends StatelessWidget {
  FormComponent({super.key});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final c = context.read<LoginCubit>();
        return Column(
          children: [
            InputWidget(
                prefixIcon: const Icon(Icons.person_outline_sharp),
                controller: c.user,
                onChanged: (e) {
                  c.btnEnabled();
                }),
            SizedBox(height: _size.height * .02),
            InputWidget(
                obscureText: !state.showPassword,
                suffixIcon: IconButton(
                    icon: !state.showPassword
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      c.showPass(!state.showPassword);
                    }),
                prefixIcon: const Icon(Icons.lock_outlined),
                controller: c.pass,
                onChanged: (e) {
                  c.btnEnabled();
                }),
          ],
        );
      },
    );
  }
}
