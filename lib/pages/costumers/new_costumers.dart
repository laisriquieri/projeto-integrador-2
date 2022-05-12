import 'package:flutter/material.dart';
import 'package:pi_dois/pages/home/componets/custom_text_field.dart';

class NewCostumerScreen extends StatefulWidget {
  NewCostumerScreen({Key? key}) : super(key: key);

  @override
  State<NewCostumerScreen> createState() => _NewCostumerScreenState();
}

class _NewCostumerScreenState extends State<NewCostumerScreen> {
  String result = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo-preto-amour-certo.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(350, 60, 0, 0),
            height: 600,
            width: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  //Nome
                  //TextField(
                  //  autofocus: true,
                  //  decoration: InputDecoration(
                  //      label: Text('Nome'),
                  //     border: OutlineInputBorder(
                  //      borderRadius: BorderRadius.circular(30),
                  //  ),
                  //  hintText: 'José da Silva'),
                  //),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
