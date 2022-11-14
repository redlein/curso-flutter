import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  @override
  Widget build(BuildContext context) {

    String dropdownValue = 'Sesion 4';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button'),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.amber
              )
            ),
            filled: true,
            fillColor: Colors.green
          ),
          dropdownColor: Colors.lightBlue,
          value: dropdownValue,
          items: <String>['Sesión 1', 'Sesión 2', 'Sesión 3', 'Sesión 4'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: const TextStyle(fontSize: 18))
            );
          }).toList(), 
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          }
        ),
      ),
    );
  }
}