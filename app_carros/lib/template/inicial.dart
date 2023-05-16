import 'package:flutter/material.dart';

widgetinicial() {
  return Stack(
    children: [
      Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("image/inicial.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        color: Color.fromRGBO(0, 0, 0, 0.5),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('image/logo.webp'),
            ),
          ],
        ),
      ),
    ],
  );
}
