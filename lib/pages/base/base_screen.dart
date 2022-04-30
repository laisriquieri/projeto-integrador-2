import 'package:flutter/material.dart';
import 'package:pi_dois/pages/home/orders.dart';
import '../home/componets/menu_widget.dart';


class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text('Amour Amour',),),
      body: Orders(),
      drawer: const Drawer(
        child: MenuWidget(),
      ),
    );

  }
  }


