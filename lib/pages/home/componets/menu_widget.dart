import 'package:flutter/material.dart';
import 'package:pi_dois/pages/home/componets/menu_widget_item.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        DrawerHeader(
          margin: EdgeInsets.only(top: 50,),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text('Menu',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),),
        ),
        MenuItemWidget(
          color: Color(0xffADD495),
          category: 'Clientes',
        ),

        MenuItemWidget(
          color: Color(0xffBEE4E7),
          category: 'Produtos',
        ),

        MenuItemWidget(
          color: Color(0xffD3BEDD),
          category: 'Relatórios',
        ),

        MenuItemWidget(
          color: Color(0xffECDBC9),
          category: 'Conta',
        ),


      ],
    );
  }
}


