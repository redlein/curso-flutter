import 'package:ejercicio/ButtonWidget.dart';
import 'package:ejercicio/sesion3/inicio.dart';
import 'package:ejercicio/sesion4/inicio4.dart';
import 'package:ejercicio/sesion5/inicio5.dart';
import 'package:ejercicio/sesion6/screen/tarea6_screen.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesiones'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            ButtonWidget(
              text: 'Sesión 3', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const Home()))
              }
            ),
            ButtonWidget(
              text: 'Sesión 4', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const Inicio4()))
              }
            ),
            ButtonWidget(
              text: 'Sesión 5', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const Inicio5Widget()))
              }
            ),
            ButtonWidget(
              text: 'Sesión 6', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const Tarea6Screen()))
              }
            ),
          ],
        ),
      ),
    );
  }
}