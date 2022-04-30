import 'package:flutter/material.dart';
import 'package:pi_dois/pages/costumers/costumers.dart';
import 'package:pi_dois/pages/home/orders.dart';
import '../home/componets/menu_widget.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amour Amour',
        ),
      ),
      body: CostumersScreen(),
      drawer: Drawer(
        child: MenuWidget(),
      ),
    );
  }
}