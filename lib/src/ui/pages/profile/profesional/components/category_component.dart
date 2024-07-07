import 'package:belleza_en_casa/src/ui/widgets/drop_widget.dart';
import 'package:flutter/material.dart';

class CategoryComponet extends StatelessWidget {
  const CategoryComponet({super.key});

  @override
  Widget build(BuildContext context) {
    return DropWidget(hint: "Selecciona una categoria", list: [], onChanged: (e){});
  }
}