import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pi_dois/models/costumer_model.dart';
import 'package:pi_dois/pages/costumers/new_costumers.dart';
import 'package:pi_dois/services/costumer_service.dart';

class CostumersScreen extends StatefulWidget {
  const CostumersScreen({Key? key}) : super(key: key);

  @override
  State<CostumersScreen> createState() => _CostumersScreenState();
}

class _CostumersScreenState extends State<CostumersScreen> {
  CostumerService costumerService = CostumerService();
  late Future<List<CostumerModel>> costumerList;

  @override
  void initState() {
    super.initState();
    costumerList = costumerService.getAllCostumers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<CostumerModel>>(
        future: costumerList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(250, 60, 0, 0),
                  height: 350,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      var costumer =
                          (snapshot.data as List<CostumerModel>)[index];
                      return Container(
                        padding: EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  costumer.id.toString(),
                                  style: TextStyle(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(
                                  costumer.name,
                                  style: TextStyle(),
                                ),
                              ),
                              Text(
                                costumer.cpf,
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: (snapshot.data as List<CostumerModel>).length,
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 75,
                        bottom: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.square(55),
                            primary: Color(0xffECDBC9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                              return NewCostumerScreen();
                            }),);
                          },
                          child: const Text(
                            "Novo Cliente",
                            style:
                            TextStyle(fontSize: 18, color: Color(0xff707070)),
                          ),
                        ),
                      )
                    ],
                  ),)
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.indigo,
            ),
          );
        },
      ),
    );
  }
}
