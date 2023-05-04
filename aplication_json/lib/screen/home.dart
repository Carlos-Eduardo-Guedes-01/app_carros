import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../api/api.dart';
import '../models/deputados.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Lista de Deputados';

    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Dados>>(
        future: dados(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return DeputadosList(deputados: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class DeputadosList extends StatelessWidget {
  const DeputadosList({Key? key, required this.deputados}) : super(key: key);

  final List<Dados> deputados;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: deputados.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("${deputados[index].nome}"),
          subtitle: Text("${deputados[index].municipioNascimento}"),
        );
      },
    );
  }
}
