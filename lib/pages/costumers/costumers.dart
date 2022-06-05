import 'package:flutter/material.dart';
import 'package:pi_dois/models/costumer_model.dart';
import 'package:pi_dois/pages/costumers/costumer_detail.dart';
import 'package:pi_dois/pages/home/componets/menu_widget.dart';
import 'package:pi_dois/routes/costumer_routes_arguments.dart';
import 'package:pi_dois/services/costumer_service.dart';

class CostumersScreen extends StatefulWidget {
  const CostumersScreen({Key? key}) : super(key: key);

  @override
  State<CostumersScreen> createState() => _CostumersScreenState();
}

class _CostumersScreenState extends State<CostumersScreen> {
  CostumerService costumerService = CostumerService();
  late Future<List<CostumerModel>> costumerList;
  bool isDeleting = false;

  @override
  void initState() {
    super.initState();
    costumerList = costumerService.getAllCostumers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo-preto-amour-certo.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      drawer: const MenuWidget(),
      body: FutureBuilder<List<CostumerModel>>(
        future: costumerList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(250, 60, 140, 0),
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
                        padding: const EdgeInsets.all(5),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/constumers-detail',
                                arguments:
                                    CostumerArgumens(costumer.id.toString()),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    costumer.id.toString(),
                                    style: const TextStyle(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: Text(
                                    costumer.name,
                                    style: const TextStyle(),
                                  ),
                                ),
                                Text(
                                  costumer.cpf,
                                  style: const TextStyle(),
                                ),
                                new Spacer(),
                                isDeleting
                                    ? CircularProgressIndicator()
                                    : IconButton(
                                        onPressed: () async {
                                          setState(() {
                                            isDeleting = true;
                                          });
                                          costumerService.deleteCostumer(
                                              costumer.id.toString());
                                          setState(() {
                                            isDeleting = false;
                                            costumerList = costumerService
                                                .getAllCostumers();
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        super.widget));
                                          });
                                        },
                                        iconSize: 25,
                                        icon: const Icon(Icons.delete))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
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
                            minimumSize: const Size.square(55),
                            primary: const Color(0xffECDBC9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/new-costumer');
                          },
                          child: const Text(
                            "Novo Cliente",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff707070)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
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
