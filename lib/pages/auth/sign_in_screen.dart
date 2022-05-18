import 'package:flutter/material.dart';
import 'package:pi_dois/pages/auth/sign_up_screen.dart';
import 'package:pi_dois/pages/base/base_screen.dart';

import '../home/componets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffecdbc9),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 540,
            width: 440,
            child: Column(
              children: [
                SizedBox(
                  height: 95,
                  width: 155,
                  child: Image.asset(
                    'assets/logo-preto-amour-certo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.50),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //Email
                        CustomTextField(
                          controller: _emailController,
                          icon: Icons.email,
                          label: "Email",
                          decoration: InputDecoration(
                            hintText: 'Digite o E-mail',
                          ),
                        ),
                        //Senha
                        const CustomTextField(
                          icon: Icons.lock,
                          label: "Senha",
                          isSecret: true,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (c) {
                                    return const BaseScreen();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Entrar",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Esqueceu a senha?",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        //Divisor

                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text("ou"),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Botão Criar conta

                        SizedBox(
                          height: 20,
                        ),

                        SizedBox(
                          height: 50,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                side: const BorderSide(
                                  width: 2,
                                  color: Colors.black,
                                )),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (c) {
                                return const SignUpScreen();
                              }));
                            },
                            child: const Text(
                              "Criar Conta",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
