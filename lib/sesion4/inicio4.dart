import 'package:ejercicio/sesion4/checkboxSwitch.dart';
import 'package:ejercicio/sesion4/dropdownButtonWidget.dart';
import 'package:ejercicio/sesion4/sliderWidget.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio/ButtonWidget.dart';

class Inicio4 extends StatelessWidget {
  const Inicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sesión 4'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ButtonWidget(
              text: 'CheckBox & Switch', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const CheckBoxSwitchWidget()))
              }
            ),
            ButtonWidget(
              text: 'Slider', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const SliderWidget()))
              }
            ),
            ButtonWidget(
              text: 'Dropdown Button', 
              onPressed: () => {
                Navigator.push( context, MaterialPageRoute( builder: (context) => const DropdownButtonWidget()))
              }
            ),
          ],
        ),
      ),
    );
  }
}