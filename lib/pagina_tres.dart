import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Tres '),
        centerTitle: true,
        backgroundColor: const Color(0xffd493ff),
      ),
      body: const Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Información Legal',
          applicationName: 'Aplicación Flutter',
          applicationVersion: 'versión 1.0.0',
          aboutBoxChildren: [
            Text('Este es un texto creado por Flutter Mapp'),
          ],
        ),
      ),
    );
  }
}
