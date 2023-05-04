import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:async';

// Application launch
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = {'/Home': (BuildContext context) => HomeScreen(title: 'IFPI')};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IFPI',
      home: SplashScreen(nextRoute: '/Home'),
      routes: routes,
    );
  }
}

// The same widget as SplashScreen, just give it another title
class HomeScreen extends StatefulWidget {
  final String name;
  const HomeScreen({Key? key, required this.name}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// Creation a widget state
class _HomeScreenState extends State {
  // Unlike SplashScreen add AppBar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home page',
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.nextRoute});
  final String nextRoute;
  @override
  State createState() => _SplashScreenState();
}

// Create a widget state
class _SplashScreenState extends State {
  // State initialization
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(widget.nextRoute);
    });
  }

  // Widget creation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('IFPIaNO'), Text("Seja bem vindo!")],
        ),
      ),
    );
  }
}
