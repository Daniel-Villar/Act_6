import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Cuatro '),
        centerTitle: true,
        backgroundColor: const Color(0xffd493ff),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Botón horizontal (funcional)
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Botón horizontal presionado')),
                  );
                },
                child: const Text('Botón Activo'),
              ),
            ),

            // Botón vertical (bloqueado por AbsorbPointer)
            SizedBox(
              width: 100,
              height: 200,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {
                    // Esta función nunca se ejecutará
                  },
                  child: const Text('Botón Bloqueado'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
