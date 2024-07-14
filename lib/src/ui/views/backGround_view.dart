// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class BackGroundView extends StatelessWidget {
  BackGroundView({super.key});

  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [_containerTop(), _containerBotton()],
    );
  }

  Widget _containerTop() => Container(
      width: _size.width,
      height: _size.height * .45,
      color: const Color.fromRGBO(166, 116, 73, 1));
  Widget _containerBotton() => Expanded(child: Container(color: Colors.white));
}
