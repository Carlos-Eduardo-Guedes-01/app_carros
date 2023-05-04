import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  @override
  State<PaginaInicio> createState() {
    return PaginaInicioState();
  }
}

class PaginaInicioState extends State<PaginaInicio> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
            'Clique aqui: $cont',
            style: TextStyle(fontSize: 50),
          ),
          onTap: () {
            setState(() {
              cont++;
            });
          },
        ),
      ),
    );
  }
}
