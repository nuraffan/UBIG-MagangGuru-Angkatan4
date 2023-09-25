import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/tutor/print.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, dynamic>> data = [
    {'title': 'Cadbury Dairy Milk', 'price': 15, 'qty': 2},
    {'title': 'Sosis Sonice', 'price': 10, 'qty': 1},
    {'title': 'Bawang Putih', 'price': 5, 'qty': 2},
    {'title': 'Teh Botol Kecap', 'price': 10, 'qty': 2},
    {'title': 'Susu Ultrajaya', 'price': 20, 'qty': 1},
    {'title': 'larutan cap kapung', 'price': 15, 'qty': 2},
  ];

  final f = NumberFormat("\$###,###.00", "en_US");

  @override
  Widget build(BuildContext context) {
    int _total = 0;
    _total = data.map((e) => e['price'] * e['qty']).reduce(
          (value, element) => value + element,
        );
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh printer'),
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (c, i) {
                  return ListTile(
                    title: Text(
                      data[i]['title'].toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                        "${f.format(data[i]['price'])} x ${data[i]['qty']}"),
                    trailing: Text(f.format(
                      data[i]['price'] * data[i]['qty'],
                    )),
                  );
                },
                itemCount: data.length,
              ),
            ),
            Container(
              color: Colors.grey[200],
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "Total ${f.format(_total)}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        Get.to(Print(data));
                      },
                      icon: Icon(Icons.print),
                      label: Text('Print'),
                      style: TextButton.styleFrom(
                          primary: Colors.white, backgroundColor: Colors.blue),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
