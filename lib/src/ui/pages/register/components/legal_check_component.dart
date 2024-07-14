import 'package:belleza_en_casa/src/ui/cubits/registro/registro_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LegalCheckComponent extends StatelessWidget {
  const LegalCheckComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistroCubit, RegistroState>(
      builder: (context, state) {
        final c = context.read<RegistroCubit>();

        return Column(
          children: [
            const SizedBox(height: 10),
            CheckboxListTile(
              value: state.term1,
              onChanged: (e) {
                c.addTerm1(!state.term1);
                c.btnEnabled();
              },
              title: const Text("Acepto términos y condiciones"),
            ),
            CheckboxListTile(
              value: state.term2,
              onChanged: (e) {
                c.addTerm2(!state.term2);
                c.btnEnabled();
              },
              title: const Text(
                  "Acepto politica de tratamiento de datos personales"),
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
