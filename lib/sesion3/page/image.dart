import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iamges'),
        centerTitle: true,
      ),
      body: const Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: FadeInImage(
            placeholder: AssetImage('assets/loader.gif'),
            image: NetworkImage('https://cdn.pixabay.com/photo/2022/05/29/03/40/goldfinch-7228334_960_720.jpg'),
          )
        ),
      ),
    );
  }
}