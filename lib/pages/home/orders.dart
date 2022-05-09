import 'package:flutter/material.dart';
import 'package:pi_dois/pages/home/componets/appbar_widget.dart';
import 'package:pi_dois/pages/home/componets/menu_widget.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo-preto-amour-certo.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      drawer: const MenuWidget(),
      body: Container(
        margin: const EdgeInsets.fromLTRB(250, 60, 0, 0),
        height: 350,
        width: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
      ),
    );
  }
}
