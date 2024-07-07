import 'package:belleza_en_casa/src/ui/pages/select_user/select_user_page.dart';
import 'package:belleza_en_casa/src/ui/widgets/base_widget.dart';
import 'package:flutter/material.dart';

import '../views/logo_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) =>  SelectUserPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(child: _logo());
  }

  Widget _logo() =>logo();
}
