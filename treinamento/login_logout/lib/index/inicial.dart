import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_logout/index/widget_image.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image imagem = Image.asset('');
  var wd = 0.0;
  int hd = 0;
  widthimg() {
    imagem = Image.asset('assets/images/01.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          imagem = Image.asset('caminho/para/imagem.png'),
          widgetimage('assets/images/01.jpg', 'Sung Jin Woo'),
          widgetimage('assets/images/02.jpg', 'Tanjiro Kamado'),
        ],
      ),
    );
  }
}
