import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Centro de ayuda de costos"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/ingresar-dinero'),
                child: const Text("Ingresar dinero")),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/retiro-efectivo'),
                child: const Text("Retiro efectivo")),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/transferir-dinero'),
                child: const Text("Transferir dinero")),
          ],
        ),
      ),
    );
  }
}
