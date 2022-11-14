import 'package:ejercicio/buttonWidget.dart';
import 'package:ejercicio/sesion5/tareaWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inicio5Widget extends StatelessWidget {
  const Inicio5Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesión 5'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ButtonWidget(
              text: 'Tarea', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const TareaWidget()))
              }
            ),
          ],
        ),
      ),
    );
  }
}