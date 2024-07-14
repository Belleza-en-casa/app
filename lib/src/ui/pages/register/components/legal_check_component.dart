import 'package:flutter/material.dart';

class LegalCheckComponent extends StatelessWidget {
  const LegalCheckComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        CheckboxListTile(
          value: false,
          onChanged: (e) {},
          title: const Text("Acepto términos y condiciones"),
        ),
        CheckboxListTile(
          value: false,
          onChanged: (e) {},
          title: const Text("Acepto politica de tratamiento de datos personales"),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
