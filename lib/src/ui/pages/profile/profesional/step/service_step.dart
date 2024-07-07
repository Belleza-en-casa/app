import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/add_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/category_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/comment_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/item_service_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/price_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/service_Component.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';

class ServiceStep extends StatelessWidget {
  const ServiceStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryComponet(),
        const SizedBox(height: 20),
        const ServiceComponent(),
        const SizedBox(height: 20),
        CommentComponent(
            controller: TextEditingController(),
            hintText: "Información adicional"),
        const SizedBox(height: 20),
        const PriceComponent(),
        const SizedBox(height: 20),
        AddComponent(title: "Añadir imagen"),
        const SizedBox(height: 20),
        SizedBox(
            width: MediaQuery.sizeOf(context).width * .5,
            child: BtnWidget.btn(
                onPressed: () {}, title: "Agregar", enabled: false)),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .13,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(4, (index) => const ItemServiceComponent()),
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
