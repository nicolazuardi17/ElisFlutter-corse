import 'dart:ffi';

import 'package:example/widget_rate_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String _userInput = "";
  int iva = 0;
  double risultato = 0;
  String? error;
  double totale(double input, int iva) {
    return (input * iva) / 100;
  }

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
                  decoration: new InputDecoration(
                      errorText: error, labelText: "Inserisci numeri"),
                  keyboardType: TextInputType.number,
                  onChanged: (String text) {
                    setState(() {
                      error = (double.tryParse(text) == null)
                          ? "Inserisci un numero"
                          : null;
                      _userInput:
                      TextInputType.number;
                      _userInput = (double.tryParse(text) != null) ? text : "0";
                    });
                  }),
              Row(children: [
                CustomButton(CustomButton.LexuryTax, () {
                  setState(() {
                    iva = 22;
                  });
                }, iva == 22),
                CustomButton(CustomButton.FoodTax, () {
                  setState(() {
                    iva = 10;
                  });
                }, iva == 10),
                CustomButton(CustomButton.AgriTax, () {
                  setState(() {
                    iva = 4;
                  });
                }, iva == 4),
              ]),
              /*  Container(
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
                ),*/

              Text('Importo senza IVA $_userInput'),
              Text('IVA: Iva($iva)'),
              Text('Totale $risultato'),
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
                              onPressed: () {
                                setState(() {
                                  risultato =
                                      totale(double.parse(_userInput), iva);
                                });
                              },
                              child: Text('Calcola IVA'),
                            ),
                          )
                        ],
                      )))
            ]),
          ),
        ));
  }
}
