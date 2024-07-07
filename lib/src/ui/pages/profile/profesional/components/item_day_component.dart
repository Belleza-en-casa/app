import 'package:flutter/material.dart';

class ItemDayComponent extends StatelessWidget {
  const ItemDayComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: MediaQuery.sizeOf(context).height * .2,
      width: MediaQuery.sizeOf(context).width * .15,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Text(
        "Sab",
        style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * .023,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
