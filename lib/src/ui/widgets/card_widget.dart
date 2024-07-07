import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  CardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        child: child);
  }
}
