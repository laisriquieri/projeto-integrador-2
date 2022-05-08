import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Image.asset('assets/logo-preto-amour-certo.png', fit: BoxFit.contain, height: 72,),),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: Colors.white,
          child: SizedBox(
            child: TextField(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Nome do Cliente',
                ),
                onSubmitted: (String str) {
                  setState(() {
                    result = str;
                  });
                  Text(result);
                }),
          ),
        ),
      ),
    );
  }
}

