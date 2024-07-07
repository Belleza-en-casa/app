import 'package:flutter/material.dart';

class ItemServiceComponent extends StatelessWidget {
  const ItemServiceComponent({super.key});

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
            Text("Categoria 1"),
            Text("Servicio 1"),
            Text("\$ 12.000"),
            SizedBox(height: 3),
            Center(child: Text("Ver mas"))
          ],
        ));
  }
}
