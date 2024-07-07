// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
   CardComponent({super.key});

   late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return  Container(
      height: _size.height*.15,
      width: _size.width*.35,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}