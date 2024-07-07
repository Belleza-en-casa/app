import 'package:belleza_en_casa/src/ui/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class PriceComponent extends StatelessWidget {
  const PriceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      controller: TextEditingController(),
      onChanged: (e) {},
      hintText: "Precio base",
      textInputType: TextInputType.number,
      // ignore: prefer_const_constructors
      prefixIcon: Icon(Icons.attach_money_outlined),
    );
  }
}
