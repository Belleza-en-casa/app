import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/add_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/comment_component.dart';
import 'package:belleza_en_casa/src/ui/pages/profile/profesional/components/image_profile_component.dart';
import 'package:belleza_en_casa/src/ui/widgets/btn_widet.dart';
import 'package:flutter/material.dart';

class PersonalStep extends StatelessWidget {
  const PersonalStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageProfileComponent(),
        const SizedBox(height: 20),
         CommentComponent(controller: TextEditingController(), hintText: "Cuéntanos sobre ti..."),
        AddComponent(title: "Certificados (opcional)"),
        AddComponent(title: "Punto de atención (opcional)"),
        const SizedBox(height: 20),
        Center(
            child: BtnWidget.btn(
                onPressed: () {}, title: "Guardar y continuar", enabled: true)),
      ],
    );
  }
}
