// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  FormComponent({super.key});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        InputWidget(
            prefixIcon: const Icon(Icons.person_outline_sharp),
            controller: TextEditingController(),
            onChanged: (e) {}),
        SizedBox(height: _size.height * .02),
        InputWidget(
          obscureText: true,
            suffixIcon: IconButton(
                icon: const Icon(Icons.visibility_off_outlined),
                onPressed: () {}),
            prefixIcon: const Icon(Icons.lock_outlined),
            controller: TextEditingController(),
            onChanged: (e) {}),
      ],
    );
  }
}
