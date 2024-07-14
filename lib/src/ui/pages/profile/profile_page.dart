import 'package:belleza_en_casa/src/ui/pages/profile/profesional/profesinal_step.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:flutter/material.dart';

enum ViewType { addInfoProfesional, addInfoClient, resume }

class ProfilePage extends StatelessWidget {
  final ViewType viewType;
  const ProfilePage({super.key, required this.viewType});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(child: _selectWidget());
  }

  Widget _selectWidget() {
    late Widget child;

    if (viewType == ViewType.addInfoProfesional) {
      child = const ProfesionalStep();
    }
    return child;
  }
}
