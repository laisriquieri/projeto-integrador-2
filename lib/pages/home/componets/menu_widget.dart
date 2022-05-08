import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text("Pedidos"),
            onTap: (() => Navigator.of(context).pushNamed('/')),
          ),
          ListTile(
            title: const Text("Clientes"),
            onTap: (() => Navigator.of(context).pushNamed('/costumers')),
          ),
          ListTile(
            title: const Text("Produtos"),
            onTap: (() => Navigator.of(context).pushNamed('/costumers')),
          ),
          ListTile(
            title: const Text("Relatórios"),
            onTap: (() => Navigator.of(context).pushNamed('/costumers')),
          ),
        ],
      ),
    );
  }
  }



