import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ejercicio/sesion6/widgets/custom_button_widget.dart';

class Tarea6Screen extends StatefulWidget {
  const Tarea6Screen({super.key});

  @override
  State<Tarea6Screen> createState() => _Tarea6ScreenState();
}

class _Tarea6ScreenState extends State<Tarea6Screen> {

  int numero = 0;

  void incrementarNumero() {
    setState(() {
      numero += 1;
    });
  }

  void disminuirNumero() {
    setState(() {
      numero -= 1;
    });
  }

  void resetNumero() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 255, 156),
        title: Text('Sesión 6', style: GoogleFonts.rubikBubbles(fontSize: 20)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: const Color.fromARGB(255, 224, 255, 156),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(image: NetworkImage('https://avatars.githubusercontent.com/u/6446357?v=4'), height: 80, width: 80,),
                        Text('Daniel', style: GoogleFonts.pacifico(fontSize: 25)), 
                        Text('Flores', style: GoogleFonts.pacifico(fontSize: 25)),
                      ]
                    ),
                  )
                )
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                color: Colors.blue,
                child: Center(child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Contador', style: GoogleFonts.pacifico(fontSize: 32)), 
                      Text('$numero', style: GoogleFonts.pacifico(fontSize: 58)),
                      CustomButtonWidget(
                        aumentar: () => incrementarNumero(), 
                        disminuir: () => disminuirNumero(), 
                        reset: () => resetNumero()
                      )
                    ],
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}