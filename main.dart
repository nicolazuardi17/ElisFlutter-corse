import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TAXES CALCULATOR"),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Inserisci Importo'),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: '100',
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: Text('22.0%'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {},
                    child: Text('10.0%'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {},
                    child: Text('4.0%'),
                  ),
                ),
              ],
            ),
            Text('Importo senza IVA 100'),
            Text('IVA 0.22'),
            Text('Totale è 122.0'),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text('Calcola IVA'),
                          ),
                        )
                      ],
                    )))
          ]),
        ),
      ),
    );
  }
}
