// ignore_for_file: file_names

import 'package:belleza_en_casa/src/ui/widgets/drop_widget.dart';
import 'package:flutter/material.dart';

class ServiceComponent extends StatelessWidget {
  const ServiceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DropWidget(hint: "Selecciona un servicio", list: const [], onChanged: (e){});
  }
}