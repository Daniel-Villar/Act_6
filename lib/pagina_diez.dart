import 'package:flutter/material.dart';

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
  bool _mostrarPrimeraImagen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 10 - Transición de Imágenes'),
        centerTitle: true,
        backgroundColor: const Color(0xffd493ff),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Presiona el botón para cambiar de imagen',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[600],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            onPressed: () {
              setState(() {
                _mostrarPrimeraImagen = !_mostrarPrimeraImagen;
              });
            },
            child: const Text('Cambiar Imagen'),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedCrossFade(
                duration: const Duration(milliseconds: 800),
                crossFadeState: _mostrarPrimeraImagen
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                firstChild: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/sabri2.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                secondChild: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/sabri.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                firstCurve: Curves.easeInOut,
                secondCurve: Curves.easeInOut,
                sizeCurve: Curves.easeInOut,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
