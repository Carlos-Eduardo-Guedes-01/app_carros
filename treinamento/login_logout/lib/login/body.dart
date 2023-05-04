import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String email = '';
  String pass = '';
  String Aviso = '';
  Color cor = Color.fromRGBO(197, 0, 0, 1);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 100,
              ),
              Text(
                Aviso,
                style: TextStyle(color: cor, fontSize: 20),
              ),
              TextField(
                onChanged: (value) => email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'E-mail',
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                onChanged: (value) => pass = value,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'Password',
                ),
              ),
              Container(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (email == 'carlos@gmail.com' && pass == '12345678') {
                    setState(() {
                      Aviso = 'Login autorizado!';
                    });
                  } else if (email != 'carlos@gmail.com' &&
                      pass != '12345678' &&
                      email != '' &&
                      pass != '') {
                    setState(() {
                      Aviso = 'E-mail ou senha incorretos';
                    });
                  } else if (email == '' || pass == '') {
                    setState(() {
                      Aviso = 'Por favor insira valores nos campos';
                    });
                  } else {}
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
