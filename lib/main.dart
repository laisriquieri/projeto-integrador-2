import 'package:flutter/material.dart';
import 'package:pi_dois/pages/auth/sign_in_screen.dart';
import 'package:pi_dois/pages/base/base_screen.dart';
import 'package:pi_dois/pages/costumers/costumer_detail.dart';
import 'package:pi_dois/pages/costumers/costumers.dart';
import 'package:pi_dois/pages/costumers/new_costumers.dart';
import 'package:pi_dois/pages/home/new_order.dart';
import 'package:pi_dois/pages/home/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amour Amour',
      initialRoute: '/costumers',
      routes: {
        '/': (context) => const Orders(),
        '/new-orders': (context) => const NewOrder(),
        '/costumers': (context) => const CostumersScreen(),
        '/constumers-detail': (context) => const CostumerDetailScreen(),
        '/new-costumer': (context) => NewCostumerScreen(),
        '/login': (context) => SignInScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Color(0xff707070), size: 40),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 88,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
