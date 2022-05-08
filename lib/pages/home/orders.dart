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
      appBar: AppBar(title: Image.asset('assets/logo-preto-amour-certo.png', fit: BoxFit.contain, height: 72,),),
      drawer: const MenuWidget(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(350, 50, 150, 50),
        child: Container(
          margin: EdgeInsets.only(top: 100),
          height: 300,
          width: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),


        ),
      ),
    );
  }
}
