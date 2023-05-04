import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: ((context) => const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return widgetScaffold();
  }
}

widgetScaffold() {
  return Scaffold(
      backgroundColor: Color.fromRGBO(188, 188, 188, 1),
      appBar: widgetAppBar(),
      body: Center(
        child: Text(
          'App Módulo VI',
          style:
              TextStyle(color: Color.fromRGBO(247, 247, 247, 1), fontSize: 30),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            children: [
              Icon(size: 50, Icons.home),
              Icon(size: 50, Icons.remove),
              Icon(size: 50, Icons.add),
              Icon(size: 50, Icons.exit_to_app),
            ],
          ),
        ),
      ));
}

widgetAppBar() {
  return AppBar(
      backgroundColor: Color.fromRGBO(130, 130, 130, 1),
      title: Center(
        child: Text(
          'App Módulo V',
        ),
      ));
}
