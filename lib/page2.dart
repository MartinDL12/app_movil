import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/pageInfo.dart';

class Page2 extends StatelessWidget {
  final List<String> listaUsuarios = <String>[
    'Martin Domínguez',
    'Daniel Matuz',
    'Carlos Caballero',
    'Anthony Gonzáles',
    'Rogelio Ovando',
    'Mariana Montiel',
    'Montserrat Ramos',
    'Soledad Hernández',
    'Manuel Roque',
    'Diana López',
    'Roberto Macías',
    'Jorge Bedran',
    'Héctor Sánchez',
    'Andrea Moreno',
    'Paloma Ovilla',
    'Daniela Lara',
    'Sarahí Rodas',
    'Jesús Vcitoria',
    'Carla Luna',
    'Norma Hernández'
  ];

  String nameData;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(240, 94, 100, 10),
          centerTitle: true,
          title: Text('AppRest'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: ListView.builder(
              padding: const EdgeInsets.all(50),
              itemCount: listaUsuarios.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: [
                      RaisedButton(
                        color: Color.fromRGBO(42, 200, 194, 10),
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (bc) => PageInfo(
                                    nameData: listaUsuarios[index],
                                  ));
                          Navigator.of(context).push(route);
                        },
                        child: Center(
                          child: Text(
                            ' ${index + 1}.-  ${listaUsuarios[index]}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}
