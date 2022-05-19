import 'package:flutter/material.dart';
import 'package:pi_dois/pages/products/products.dart';
import 'package:pi_dois/pages/home/componets/custom_text_field.dart';

class NewProductScreen extends StatefulWidget {
  const NewProductScreen({Key? key}) : super(key: key);

  @override
  State<NewProductScreen> createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {
  final _decricaoController = TextEditingController();
  final _tamanhoController = TextEditingController();
  final _corController = TextEditingController();
  final _valorCustoController = TextEditingController();
  final _valorVendaController = TextEditingController();
  final _observacaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo-preto-amour-certo.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(350, 60, 0, 0),
            height: 500,
            width: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    bottom: 80,
                    left: 10,
                    right: 380,
                    child: CustomTextField(
                      controller: _decricaoController,
                      label: "Descrição",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert Downey Junior',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    bottom: 80,
                    left: 420,
                    right: 10,
                    child: CustomTextField(
                      controller: _tamanhoController,
                      label: "Tamanho",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert Downey Junior',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    bottom: 80,
                    left: 10,
                    right: 480,
                    child: CustomTextField(
                      controller: _corController,
                      label: "Cor",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert Downey Junior',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    bottom: 80,
                    left: 320,
                    right: 10,
                    child: CustomTextField(
                      controller: _valorCustoController,
                      label: "Valor de Custo",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert Downey Junior',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    bottom: 80,
                    left: 10,
                    right: 520,
                    child: CustomTextField(
                      controller: _valorVendaController,
                      label: "Valor de Venda",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert Downey Junior',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    bottom: 80,
                    left: 280,
                    right: 10,
                    child: CustomTextField(
                      controller: _observacaoController,
                      label: "Observações Gerais",
                      decoration: InputDecoration(
                        hintText: 'Ex: Robert Downey Junior',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 390,
                    left: 280,
                    right: 280,
                    bottom: 25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.square(55),
                        primary: const Color(0xffECDBC9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/costumers');
                      },
                      child: const Text(
                        "Salvar",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff707070)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
