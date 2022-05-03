import 'package:flutter/material.dart';
import 'package:pi_dois/pages/costumers/new_costumers.dart';
import '../home/componets/menu_widget.dart';

class BaseDefault extends StatelessWidget {
  const BaseDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff707070), size: 40),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/logo-preto-amour-certo.png', fit: BoxFit.contain, height: 72,),
        toolbarHeight: 88,
      ),
      body: NewCostumerScreen(),
      drawer: Drawer(
        child: MenuWidget(),
      ),
    );
  }
}