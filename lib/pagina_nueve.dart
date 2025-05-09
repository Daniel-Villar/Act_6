import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  State<PantallaNueve> createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  bool _estaSeleccionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Nueve '),
        centerTitle: true,
        backgroundColor: const Color(0xffd493ff),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Toque el contenedor para animarlo',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              setState(() {
                _estaSeleccionado = !_estaSeleccionado;
              });
            },
            child: AnimatedContainer(
              width: _estaSeleccionado ? 200.0 : 100.0,
              height: _estaSeleccionado ? 100.0 : 200.0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                color: _estaSeleccionado ? Colors.blueGrey : Colors.blue[100],
                borderRadius:
                    BorderRadius.circular(_estaSeleccionado ? 20.0 : 10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
              ),
              alignment:
                  _estaSeleccionado ? Alignment.center : Alignment.topCenter,
              child: const FlutterLogo(
                size: 60,
                style: FlutterLogoStyle.markOnly,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            _estaSeleccionado ? 'Modo compacto' : 'Modo alargado',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
