import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Dos '),
        centerTitle: true,
        backgroundColor: const Color(0xffd493ff),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Mostrar About Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationLegalese: 'Legalese',
                applicationName: 'Flutter App',
                applicationVersion: 'versión 1.0.0',
                children: [
                  Text('Este es un texto creado por Flutter Mapp'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
