import 'package:flutter/material.dart';

class DropWidget extends StatelessWidget {
  final String hint;
  final List<DropdownMenuItem> list;
  final Function(dynamic e) onChanged;

  const DropWidget(
      {super.key,
      required this.hint,
      required this.list,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: list,
      onChanged: onChanged,
      hint: Text(hint),
      decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          contentPadding: EdgeInsets.all(8)),
    );
  }
}
