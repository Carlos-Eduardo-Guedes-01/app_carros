import 'package:flutter/material.dart';

import 'app1statefull.dart';

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red), home: PaginaInicio());
  }
}
