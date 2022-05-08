import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(iconTheme: IconThemeData(color: Color(0xff707070), size: 40),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Image.asset('assets/logo-preto-amour-certo.png', fit: BoxFit.contain, height: 72,),
      toolbarHeight: 88,);
  }
}
