import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<dynamic> products = [
      {
        'name': 'Cocacola',
        'description': '500 ml',
        'pCompra': '2.00',
        'pVenta': '3.00'
      },{
        'name': 'Oreo',
        'description': '500 und',
        'pCompra': '2.00',
        'pVenta': '3.00'
      },{
        'name': 'Inka Cola',
        'description': '500 ml',
        'pCompra': '2.00',
        'pVenta': '3.00'
      },{
        'name': 'Leche Gloria',
        'description': '3 Und',
        'pCompra': '2.00',
        'pVenta': '5.00'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(color: Colors.white),
          columns: const [
            DataColumn(label: Text('Producto')),
            DataColumn(label: Text('Descripción')),
            DataColumn(label: Text('P. Compra')),
            DataColumn(label: Text('P. Venta')),
          ],
          rows: products.map((e) => DataRow(cells: [
            DataCell(Text(e['name'])),
            DataCell(Text(e['description'])),
            DataCell(Text(e['pCompra'])),
            DataCell(Text(e['pVenta'])),
          ])).toList()
        ),
      ),
    );
  }
}