// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class AddComponent extends StatelessWidget {

  final String title;
  AddComponent({super.key, required this.title});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
         Text(title),
        const SizedBox(height: 10),
        CardWidget(
            child: SizedBox(
          width: _size.width * .25,
          height: _size.height * .12,
          child: Icon(Icons.add, size: _size.height * .1),
        ))
      ],
    );
  }
}
