// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ScheduleComponent extends StatelessWidget {
  final String periodo;
  ScheduleComponent({
    super.key,
    required this.periodo,
  });
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Horario $periodo ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _itemHora(txt: "Inicio"),
            _itemHora(txt: "Fin"),
          ],
        )
      ],
    );
  }

  Widget _itemHora({required String txt}) => SizedBox(
        width: _size.width * .35,
        height: _size.height * .05,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.calendar_month_outlined),
              const SizedBox(width: 5),
              Text(txt)
            ],
          ),
        ),
      );
}
