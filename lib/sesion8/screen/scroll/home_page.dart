import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController();

    final List<dynamic> data = [
      {
        'img': 'https://cdn.pixabay.com/photo/2018/11/19/05/53/animal-3824672_960_720.jpg',
        'username': 'prueba 1'
      },
      {
        'img': 'https://cdn.pixabay.com/photo/2016/11/14/15/29/hummingbird-1823829_960_720.jpg',
        'username': 'prueba 2'
      },
      {
        'img': 'https://cdn.pixabay.com/photo/2015/11/27/19/53/cat-1066157_960_720.jpg',
        'username': 'prueba 3'
      },
      {
        'img': 'https://cdn.pixabay.com/photo/2021/09/13/08/18/blue-flower-6620619_960_720.jpg',
        'username': 'prueba 4'
      },
      {
        'img': 'https://cdn.pixabay.com/photo/2013/03/20/23/20/butterfly-95363_960_720.jpg',
        'username': 'prueba 5'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            /** CONTENIDO IMÁGENES Y OPCIONES */
            PageView.builder(
              itemCount: data.length,
              scrollDirection: Axis.vertical,
              controller: controller,
              itemBuilder: (context, index) {
                final dato = data[index];
                return TiktokWidget(img: dato['img'], username: dato['username']);
              },
            ),
            /** INFORMACIÓN SUPERIOR */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('  Reels', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold ),),
                IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TiktokWidget extends StatelessWidget {

  final String img;
  final String username;

  const TiktokWidget({super.key, required this.img, required this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(img, fit: BoxFit.fill,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [ 
                      CircleAvatar(
                        backgroundImage: NetworkImage(img),
                      ),
                      Text(' $username • Follow', style: const TextStyle(fontSize: 18),)
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Column( children: const [ Icon(Icons.favorite_outline), Text('40k') ],),
                  Column( children: const [ Icon(Icons.comment_outlined), Text('40k') ],),
                  Column( children: const [ Icon(Icons.send_outlined), Text('') ],),
                  Column( children: const [ Icon(Icons.more_vert), Text('') ],),
                  CircleAvatar(
                    backgroundImage: NetworkImage(img),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}