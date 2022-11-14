import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxSwitchWidget extends StatefulWidget {
  const CheckBoxSwitchWidget({super.key});

  @override
  State<CheckBoxSwitchWidget> createState() => _CheckBoxSwitchWidgetState();
}

class _CheckBoxSwitchWidgetState extends State<CheckBoxSwitchWidget> {

  bool isSwitched = true;
  bool isChecked = false;
  bool isSwitchedCupertino = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox & Switch'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
              value: isSwitched, 
              onChanged: (value) => {
                setState(() => isSwitched = value)
              }
            ),
            Checkbox(
              value: isChecked, 
              onChanged: (value) => {
                setState(() => isChecked = value!)
              }
            ),
            CupertinoSwitch(
              value: isSwitchedCupertino, 
              onChanged: (value) => {
                setState(() => isSwitchedCupertino = value)
              }
            ),
          ],
        ),
      ),
    );
  }
}