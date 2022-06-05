import 'package:flutter/material.dart';
import 'package:pi_dois/models/costumer_model.dart';
import 'package:pi_dois/pages/home/componets/custom_text_field.dart';
import 'package:pi_dois/routes/costumer_routes_arguments.dart';
import 'package:pi_dois/services/costumer_service.dart';

class CostumerDetailScreen extends StatefulWidget {
  const CostumerDetailScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<CostumerDetailScreen> createState() => _CostumerDetailScreenState();
}

class _CostumerDetailScreenState extends State<CostumerDetailScreen> {
  CostumerService costumerService = CostumerService();
  late Future<CostumerModel> costumer;
  bool isUpdating = false;

  final _typeController = TextEditingController();
  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _zipcodeController = TextEditingController();
  final _streetController = TextEditingController();
  final _numberController = TextEditingController();
  final _complementController = TextEditingController();
  final _districtController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _observationController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CostumerArgumens;
    costumer = costumerService.getCostumerById('/' + args.id);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo-preto-amour-certo.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      body: FutureBuilder<CostumerModel>(
        future: costumer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var costumer = snapshot.data;
            _typeController.text = costumer!.type.toString();
            _nameController.text = costumer.name.toString();
            _cpfController.text = costumer.cpf.toString();
            _birthDateController.text = costumer.birthDate.toString();
            _phoneController.text = costumer.phone.toString();
            _emailController.text = costumer.email.toString();
            _zipcodeController.text = costumer.zipcode.toString();
            _streetController.text = costumer.street.toString();
            _numberController.text = costumer.number.toString();
            _complementController.text = costumer.complement.toString();
            _districtController.text = costumer.district.toString();
            _cityController.text = costumer.city.toString();
            _stateController.text = costumer.state.toString();
            _observationController.text = costumer.observation.toString();
            return Column(
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
                            controller: _nameController,
                            label: "Nome",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          bottom: 80,
                          left: 10,
                          right: 380,
                          child: CustomTextField(
                            controller: _typeController,
                            label: "Tipo",
                            decoration: InputDecoration(
                              hintText: 'Ex: 1',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          bottom: 80,
                          left: 420,
                          right: 10,
                          child: CustomTextField(
                            controller: _cpfController,
                            label: "CPF",
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
                            controller: _birthDateController,
                            label: "Data de Nascimento",
                            decoration: InputDecoration(
                              hintText: 'Ex: 10-10-2020',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          bottom: 80,
                          left: 10,
                          right: 480,
                          child: CustomTextField(
                            controller: _phoneController,
                            label: "Telefone",
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
                            controller: _emailController,
                            label: "E-mail",
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
                            controller: _zipcodeController,
                            label: "CEP",
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
                            controller: _streetController,
                            label: "Logradouro",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          bottom: 80,
                          left: 10,
                          right: 600,
                          child: CustomTextField(
                            controller: _numberController,
                            label: "Número",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          bottom: 80,
                          left: 200,
                          right: 300,
                          child: CustomTextField(
                            controller: _complementController,
                            label: "Complemento",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          bottom: 80,
                          left: 500,
                          right: 10,
                          child: CustomTextField(
                            controller: _districtController,
                            label: "Bairro",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 250,
                          bottom: 80,
                          left: 10,
                          right: 380,
                          child: CustomTextField(
                            controller: _cityController,
                            label: "Cidade",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 250,
                          bottom: 80,
                          left: 420,
                          right: 10,
                          child: CustomTextField(
                            controller: _stateController,
                            label: "Estado",
                            decoration: InputDecoration(
                              hintText: 'Ex: Robert Downey Junior',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 310,
                          bottom: 0,
                          left: 10,
                          right: 10,
                          child: CustomTextField(
                            controller: _observationController,
                            label: "Observações",
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
                          child: isUpdating
                              ? CircularProgressIndicator()
                              : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.square(55),
                                    primary: const Color(0xffECDBC9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      isUpdating = true;
                                    });

                                    if (_typeController.text != '' &&
                                        _nameController.text != '' &&
                                        _birthDateController != '' &&
                                        _cpfController.text != '' &&
                                        _phoneController.text != '' &&
                                        _emailController.text != '' &&
                                        _zipcodeController.text != '' &&
                                        _streetController.text != '' &&
                                        _numberController.text != '' &&
                                        _districtController.text != '' &&
                                        _complementController.text != '' &&
                                        _cityController.text != '' &&
                                        _stateController.text != '' &&
                                        _observationController.text != '') {
                                      CostumerModel costumerModel =
                                          CostumerModel(
                                              id: null,
                                              name: _nameController.text,
                                              type: int.parse(
                                                  _typeController.text),
                                              cpf: _cpfController.text,
                                              birthDate:
                                                  _birthDateController.text,
                                              phone: _phoneController.text,
                                              email: _emailController.text,
                                              zipcode: _zipcodeController.text,
                                              street: _streetController.text,
                                              district:
                                                  _districtController.text,
                                              city: _cityController.text,
                                              state: _stateController.text);

                                      CostumerModel? costumerCreate =
                                          await costumerService.updateCostumer(
                                              costumer: costumerModel,
                                              id: '/' + args.id);

                                      if (costumerCreate != null) {
                                        print(costumerCreate);
                                      }
                                    }
                                    setState(() {
                                      isUpdating = false;
                                      Navigator.pushNamed(
                                          context, '/costumers');
                                    });
                                  },
                                  child: const Text(
                                    "Salvar",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff707070)),
                                  ),
                                ),
                        )
                      ],
                    ),
                  ),
                ),
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
