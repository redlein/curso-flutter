
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/controller.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'package:tiktoklikescroller/types.dart';

import '../widgets/plantilla_widget.dart';



class Tarea7Screen extends StatefulWidget {
  final Controller? testingController;

  const Tarea7Screen({super.key, this.testingController} );

  @override
  State<Tarea7Screen> createState() => _Tarea7ScreenState();
}

class _Tarea7ScreenState extends State<Tarea7Screen> {

  late Controller controller;

  final List<dynamic> data = [
    {
      'img': 'https://hmperu.vtexassets.com/arquivos/ids/2728964-483-725/Polo-de-deporte-Regular-Fit---Negro-Estampado---H-M-PE.jpg?v=637878586833670000',
      'title': 'Polo de deporte Regular Fit',
      'subtitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et auctor augue, ut venenatis augue',
    },
    {
      'img': 'https://hmperu.vtexassets.com/arquivos/ids/2840061-483-725/Polo-de-correr-Regular-Fit---Negro---H-M-PE.jpg?v=637927272210900000',
      'title': 'Polo de Correr DryMove',
      'subtitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et auctor augue, ut venenatis augue',
    },
    {
      'img': 'https://hmperu.vtexassets.com/arquivos/ids/2831878-483-725/Polo-de-deporte-Muscle-Fit---Orange---H-M-PE.jpg?v=637926141250230000',
      'title': 'Polo de deporte Regular Fit',
      'subtitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et auctor augue, ut venenatis augue',
    },
    {
      'img': 'https://hmperu.vtexassets.com/arquivos/ids/2840166-483-725/Polo-de-correr-Regular-Fit---Gris-claro-Estampado-blanco---H-M-PE.jpg?v=637927272776330000',
      'title': 'Polo de deporte DryMove',
      'subtitle': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer et auctor augue, ut venenatis augue',
    },
  ];

  @override
  void initState() {
    controller = widget.testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesión 7'),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
        contentSize: data.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        controller: controller,
        builder: (BuildContext context, int index) {
          final dato = data[index];
          return PlantillaWidget(
            img: dato['img'],
            title: dato['title'],
            subtitle: dato['subtitle'],
          );
        },
      ),
    );
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }
}