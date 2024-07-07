import 'package:flutter/material.dart';

class ItemHorarioComponent extends StatelessWidget {
  const ItemHorarioComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)),
        padding: const EdgeInsets.all(8),
        width: MediaQuery.sizeOf(context).width * .3,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Lunes"),
            Text("Horario A;"),
            Text("Horario PM"),
          ],
        ));
  }
}
