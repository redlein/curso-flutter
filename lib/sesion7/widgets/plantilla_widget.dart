import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantillaWidget extends StatelessWidget {

  final String? img;
  final String? title;
  final String? subtitle;

  const PlantillaWidget({super.key, this.img, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Sesión 7'),
      //   centerTitle: true,
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 70, left: 70),
            child: SizedBox(
              width: double.infinity,
              height: 350,
              child: Image.network(
                fit: BoxFit.fill,
                '$img'
              )
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 450,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('$title', style: GoogleFonts.ubuntu(fontSize: 25, fontWeight: FontWeight.bold)),
                  Text('$subtitle', style: GoogleFonts.ubuntu(fontSize: 16)),
                  MaterialButton(onPressed: (){}, color: Colors.deepOrange, textColor: Colors.white, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.shopping_cart),
                      Text('Agregar al Carrito'),
                    ],
                  ), )
                ],
              ),
            ),
          )
          
        ],
      )
    );
  }
}