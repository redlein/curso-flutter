
import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de PC'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: FadeInImage(
                placeholder: AssetImage('assets/loader.gif'),
                image: NetworkImage('https://cdn.pixabay.com/photo/2015/08/11/20/52/motherboard-885177_960_720.jpg'),
              ),
              title: Text('Placa Base'),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: FadeInImage(
                placeholder: AssetImage('assets/loader.gif'),
                image: NetworkImage('https://media.istockphoto.com/id/1200023270/es/foto/cerrar-la-mano-insertar-o-instalar-el-componente-de-memoria-ram-en-la-placa-base-pc.jpg?s=612x612&w=is&k=20&c=RVPKcLEuccl70XhKoVEaV2SbqkPmQlmF8K2QBaHmDpI='),
              ),
              title: Text('Memoria RAM'),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: FadeInImage(
                placeholder: AssetImage('assets/loader.gif'),
                image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/28/21/08/cpu-5694565_960_720.jpg'),
              ),
              title: Text('Procesador'),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: FadeInImage(
                placeholder: AssetImage('assets/loader.gif'),
                image: NetworkImage('https://cdn.pixabay.com/photo/2020/05/12/08/55/hard-drive-5161898_960_720.jpg'),
              ),
              title: Text('Almacenamiento'),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              leading: FadeInImage(
                placeholder: AssetImage('assets/loader.gif'),
                image: NetworkImage('https://cdn.pixabay.com/photo/2020/06/06/01/21/nvidia-5264921_960_720.jpg'),
              ),
              title: Text('Tarjeta de Video'),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}