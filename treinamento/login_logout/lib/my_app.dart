import 'package:flutter/material.dart';

import 'home_page.dart';
import 'index/inicial.dart';
import 'login/body.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(title: 'Bem vindo carlos@gmail.com'),
      debugShowCheckedModeBanner: false,
    );
  }
}
