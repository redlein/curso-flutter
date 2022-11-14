import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  
  double _currentSliderValue = 20; 
  double _currentSliderCupertinoValue = 0; 

  double _inicio = 0;
  double _fin = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Slider(
              value: _currentSliderValue, 
              max: 100,
              divisions: 25,
              label: _currentSliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              }
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 100,
                activeColor: CupertinoColors.activeBlue,
                thumbColor: CupertinoColors.activeGreen,
                value: _currentSliderCupertinoValue, 
                onChanged: (value) {
                  setState(() {
                    _currentSliderCupertinoValue = value;
                  });
                }
              )
            ),
            RangeSlider(
              min: 0,
              max: 100,
              activeColor: Colors.amber,
              inactiveColor: Colors.green,
              values: RangeValues(_inicio, _fin), 
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  _inicio = value.start;
                  _fin = value.end;
                });
              }
            )
          ],
        ),
      ),
    );
  }
}