import 'package:flutter/material.dart';

import 'package:ejercicio/sesion3/page/animacion.dart';
import 'package:ejercicio/sesion3/page/image.dart';
import 'package:ejercicio/sesion3/page/listtile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Componentes de PC',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTileDemo()));
                }),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Images',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageDemo()));
                }),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'AnimacionDemo',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimacionDemo()));
                }),
          ],
        ),
      ),
    );
  }
}