import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 10),
        children: [
          Ink(
            color: const Color(0xffADD495),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ListTile(
              title: const Text(
                "Pedidos",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              onTap: (() => Navigator.of(context).pushNamed('/')),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Ink(
            color: const Color(0xffBEE4E7),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ListTile(
              title: const Text(
                "Clientes",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              onTap: (() => Navigator.of(context).pushNamed('/costumers')),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Ink(
            color: const Color(0xffD3BEDD),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ListTile(
              title: const Text(
                "Produtos",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              onTap: (() => Navigator.of(context).pushNamed('/costumers')),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Ink(
            color: const Color(0xffECDBC9),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ListTile(
              title: const Text(
                "Relatórios",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              onTap: (() => Navigator.of(context).pushNamed('/costumers')),
            ),
          ),
        ],
      ),
    );
  }
}
