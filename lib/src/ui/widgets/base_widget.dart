// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  final Widget child;
  late double padding;

    BaseWidget({super.key, required this.child, this.padding = 16.0});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(padding), // Agrega padding a todo el cuerpo del Scaffold
          child: child,
        ),
      ),
    );
  }
}