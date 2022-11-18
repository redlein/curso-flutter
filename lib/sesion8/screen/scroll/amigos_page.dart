import 'package:flutter/material.dart';

class AmigosPage extends StatelessWidget {
  const AmigosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        centerTitle: true,
      ),
      body: Table(
        border: TableBorder.all(color: Colors.grey),

        children: const [
          TableRow(
            children: [
              Text('Producto'),
              Text('PVenta'),
              Text('PCompra'),
            ]
          ),
          TableRow(
            children: [
              Text('Producto'),
              Text('PVenta'),
              Text('PCompra'),
            ]
          ),
          TableRow(
            children: [
              Text('Producto'),
              Text('PVenta'),
              Text('PCompra'),
            ]
          ),
          TableRow(
            children: [
              Text('Producto'),
              Text('PVenta'),
              Text('PCompra'),
            ]
          ),
        ],
      ),
    );
  }
}