// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  final String type;
  final String image;
  final Function() action;
  late bool enabledBorder;
  CardComponent(
      {super.key,
      this.enabledBorder = false,
      required this.type,
      required this.action,
      required this.image});

  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        GestureDetector(
          onTap: action,
          child: Container(
            height: _size.height * .15,
            width: _size.width * .35,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Colors.red.withOpacity(
                      enabledBorder ? 1 : 0,
                    ),
                    width: 2)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
        ),
        Text(type)
      ],
    );
  }
}
