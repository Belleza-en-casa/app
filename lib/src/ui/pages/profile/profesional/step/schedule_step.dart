// ignore_for_file: must_be_immutable

import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/item_day_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/item_horario_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/schedule_component.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';

class ScheduleStep extends StatelessWidget {
  ScheduleStep({super.key});
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
            height: _size.height * .07,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                    List.generate(7, (index) => const ItemDayComponent()))),
        const SizedBox(height: 20),
        ScheduleComponent(
          periodo: "AM",
        ),
        const SizedBox(height: 20),
        ScheduleComponent(
          periodo: "PM",
        ),
        const SizedBox(height: 20),
        BtnWidget.btn(onPressed: () {}, title: "Agregar", enabled: false),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .1,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(4, (index) => const ItemHorarioComponent()),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
            width: MediaQuery.sizeOf(context).width * .5,
            child: BtnWidget.btn(
                onPressed: () {},
                title: "Continuar y guardar",
                enabled: false)),
      ],
    );
  }
}
