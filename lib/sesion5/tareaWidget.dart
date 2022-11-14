import 'package:flutter/material.dart';

class TareaWidget extends StatelessWidget {
  const TareaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Edad', style: TextStyle(fontSize: 20)),
                    Text('28', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                  ],
                )
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              color: Colors.blue,
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(image: NetworkImage('https://avatars.githubusercontent.com/u/6446357?v=4'), height: 80, width: 80,),
                  Text('Daniel Alexander', style: TextStyle(fontSize: 20)),
                  Text('Flores Mamani', style: TextStyle(fontSize: 20)),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}