import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() =>
    runApp(DevicePreview(enabled: true, builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prova Surpresa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Prefeitura Municipal de Corrente'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          titleTextStyle:
              TextStyle(backgroundColor: Color.fromARGB(1, 12, 54, 94)),
        ),
        body: Center(
          child: Column(),
        ));
  }
}
