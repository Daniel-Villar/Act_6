import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla cinco '),
        centerTitle: true,
        backgroundColor: const Color(0xffd493ff),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: const Text(
            'Mostrar Diálogo de Alerta',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Diálogo de Ejemplo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: const Text(
                  'Este es un diálogo de alerta creado con Flutter',
                  style: TextStyle(fontSize: 16),
                ),
                contentPadding: const EdgeInsets.all(20.0),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Cerrar',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
