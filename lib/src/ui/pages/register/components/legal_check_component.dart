import 'package:flutter/material.dart';

class LegalCheckComponent extends StatelessWidget {
  const LegalCheckComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CheckboxListTile(
          value: false,
          onChanged: (e) {},
          title: Text("Acepto términos y condiciones"),
        ),
        CheckboxListTile(
          value: false,
          onChanged: (e) {},
          title: Text("Acepto politica de tratamiento de datos personales"),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
