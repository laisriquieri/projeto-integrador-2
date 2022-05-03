import 'package:flutter/material.dart';

import '../home/componets/menu_widget.dart';

class NewCostumerScreen extends StatefulWidget {
  NewCostumerScreen({Key? key}) : super(key: key);

  @override
  State<NewCostumerScreen> createState() => _NewCostumerScreenState();
}

class _NewCostumerScreenState extends State<NewCostumerScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: NewCostumer(),
      drawer: Drawer(
        child: MenuWidget(),
      ),
    );
  }
}

class NewCostumer extends StatefulWidget {
  NewCostumer({Key? key}) : super(key: key);

  String result = "";

  @override
  State<NewCostumer> createState() => _NewCostumerState();
}

class _NewCostumerState extends State<NewCostumer> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Center(
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
                hintText: 'Nome',
              ),
              onSubmitted: (String str) {
                setState(() {
                  result = str;
                });
              }),
        ),
      ),
    );
  }
}
