import 'package:flutter/material.dart';
import 'package:ejercicio/buttonWidget.dart';
import 'package:ejercicio/sesion8/screen/scroll/navegacion_screen.dart';

class Home8Screen extends StatelessWidget {
  const Home8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Sesión 8'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ButtonWidget(
              text: 'Scroll', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const NavegacionScreen()))
              }
            ),
          ],
        ),
      ),
    );
  }
}