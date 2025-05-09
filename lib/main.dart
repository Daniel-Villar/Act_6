import 'package:flutter/material.dart';
import 'package:widgets/pagina_uno.dart';
import 'package:widgets/pagina_dos.dart';
import 'package:widgets/pagina_tres.dart';
import 'package:widgets/pagina_cuatro.dart';
import 'package:widgets/pagina_cinco.dart';
import 'package:widgets/pagina_seis.dart';
import 'package:widgets/pagina_siete.dart';
import 'package:widgets/pagina_ocho.dart';
import 'package:widgets/pagina_nueve.dart';
import 'package:widgets/pagina_diez.dart';
import 'package:widgets/pagina_once.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
