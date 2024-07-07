import 'package:belleza_en_casa/src/ui/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class CommentComponent extends StatelessWidget {
  final TextEditingController controller;
  final String  hintText;

  const CommentComponent({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InputWidget(
        hintText: hintText,
        controller: controller, onChanged: (e){}, lines: 3,),
    );
  }
}