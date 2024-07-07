// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(dynamic e) onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType? textInputType;
  late bool obscureText;
  final int lines;
  InputWidget({
    super.key,
    this.obscureText = false,
    this.hintText = "",
    required this.controller,
    required this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.lines = 1,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: textInputType,
      obscureText: obscureText,
      maxLines: lines,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(.5)),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          contentPadding: const EdgeInsets.all(8)),
    );
  }
}
