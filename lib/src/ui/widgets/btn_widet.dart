import 'package:flutter/material.dart';

class BtnWidget {
  static Widget btn(
          {required Function() onPressed,
          required String title,
          required bool enabled}) =>
      ElevatedButton(
          onPressed: enabled ? onPressed : null,
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          child: Text(title));
}
