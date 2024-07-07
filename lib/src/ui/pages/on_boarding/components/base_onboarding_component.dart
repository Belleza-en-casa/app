// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BaseOnboardingComponent extends StatelessWidget {
  final String img;
  final String txt1;
  final String txt2;

  BaseOnboardingComponent(
      {super.key, required this.img, required this.txt1, required this.txt2});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          height: _size.height * .5,
          width: _size.width * .6,
          child: const Placeholder(),
        ),
        Center(
          child: Container(
              margin: EdgeInsets.only(top: _size.height * .03),
              child: Text(txt1, style: TextStyle(fontSize: _size.height*.018),)),
        ),
        Center(
          child: Container(
              margin: EdgeInsets.only(top: _size.height * .03),
              child: Text(txt2)),
        ),
      ],
    );
  }
}
