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
      body: Container(
        margin: const EdgeInsets.fromLTRB(250, 60, 0, 0),
        height: 350,
        width: 800,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    icon: Icon(Icons.person),
                    hintText: 'Informe o nome'),
              ),
              const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.mail),
                    hintText: 'Informe o email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
