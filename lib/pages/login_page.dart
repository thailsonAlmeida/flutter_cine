import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/componentes/input_decoration_authentication.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: getAuthenticationInputDecoration('Email'),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextField(
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: getAuthenticationInputDecoration('Senha'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            if (email == 'thailson.aguia@gmail.com' &&
                                password == '123') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                              if (kDebugMode) {
                                print('correto');
                              } else {
                                if (kDebugMode) {
                                  print('Login inválido');
                                }
                              }
                            }
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(color: Colors.black),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(22, 26, 38, 1),
      body: Stack(
        children: [
          _body(),
        ],
      ),
    );
  }
}
