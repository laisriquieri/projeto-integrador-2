import 'package:flutter/material.dart';
import 'package:pi_dois/pages/base/base_default.dart';
import 'package:pi_dois/pages/base/base_screen.dart';

import '../home/componets/menu_widget.dart';

class NewCostumerScreen extends StatelessWidget {
  const NewCostumerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseDefault(),
    );
  }
}

class NewCostumer extends StatelessWidget {
  const NewCostumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.fromLTRB(250, 60, 0, 0),
                height: 600,
                width: 800,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child:
                )
            ),
          )
        ]
    );
  }
}

