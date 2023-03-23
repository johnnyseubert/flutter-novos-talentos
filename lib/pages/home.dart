import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    print("Rodou o initState");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              setState(() {
                contador++;
              });
            },
            child: const Text('Incrementar'),
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  constraints: BoxConstraints(
                    maxHeight: 200,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                  context: context,
                  builder: (ctx) {
                    return Column(
                      children: const [FlutterLogo()],
                    );
                  },
                );
              },
              child: const Text('Abrir modal')),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(Random().nextInt(100));
              },
              child: const Text('Voltar para Login'),
            ),
          ),
          Text(contador.toString()),
        ],
      ),
    );
  }
}
