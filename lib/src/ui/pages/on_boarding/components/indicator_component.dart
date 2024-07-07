import 'package:flutter/material.dart';

class IndicatorComponent extends StatelessWidget {

  final bool enabled;
  const IndicatorComponent({super.key, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: !enabled ? Colors.grey : Colors.black,
            borderRadius: BorderRadius.circular(100)),
      );
  }
}