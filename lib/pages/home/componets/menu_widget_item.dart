import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {

  final Color color;
  final String category;

  const MenuItemWidget({
    Key? key, required this.color, required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      color: color,
      child: SizedBox(
        height: 70,
        width: 250,
        child: ListTile(
          title: Text(category,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 22,
              color: Color(0xff707070),
            ),),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}