import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Image image = Image.asset('caminho/para/imagem.png');

  @override
  Widget build(BuildContext context) {
    int width = image.width;
    int height = image.height;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tamanho da Imagem'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Largura da Imagem: $width'),
              Text('Altura da Imagem: $height'),
            ],
          ),
        ),
      ),
    );
  }
}