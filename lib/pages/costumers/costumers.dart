import 'package:flutter/material.dart';
import 'package:pi_dois/models/costumer_model.dart';
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
            return ListView.separated(
              itemBuilder: (context, index) {
                var costumer = (snapshot.data as List<CostumerModel>)[index];
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(costumer.id.toString()),
                      const SizedBox(height: 5),
                      Text(costumer.name),
                      const SizedBox(height: 5),
                      Text(costumer.cpf),
                      const SizedBox(height: 5),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: (snapshot.data as List<CostumerModel>).length,
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
