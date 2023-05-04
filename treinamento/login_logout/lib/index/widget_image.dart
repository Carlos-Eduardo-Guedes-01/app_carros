import 'package:flutter/material.dart';

widgetimage(String image, String nome) {
  Image imagem = Image.asset(image);
  double? wd = imagem.width;
  double? ht = imagem.height;
  return Container(
      child: Stack(
    children: [
      Image.asset(image),
      Container(
        height: 10,
      ),
      Container(
        width: 500,
        height: ht,
        color: const Color.fromRGBO(0, 0, 0, 0.3),
      ),
      Container(
        width: 500,
        height: 36,
        margin: EdgeInsets.only(top: 190),
        padding: EdgeInsets.only(left: 120),
        decoration: BoxDecoration(color: Color.fromRGBO(117, 110, 110, 0.5)),
        child: Text(
          nome,
          style: TextStyle(
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white),
        ),
      ),
    ],
  ));
}
