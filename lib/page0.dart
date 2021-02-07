import 'package:flutter/material.dart';

class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100, 10),
        centerTitle: true,
        title: Text('Info'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              child: Image.network(
                  'https://www.infobae.com/new-resizer/F5E46F0iqoVTf-cPHZ0_k-ctUK8=/768x512/filters:format(jpg):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/07/13004917/Erno-Rubik.jpg'),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'El cubo de Rubik es un rompecabezas mecánico tridimensional creado por el escultor y profesor de arquitectura húngaro Erno Rubik en 1974.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 125,
                      child: RaisedButton(
                        color: Color.fromRGBO(42, 200, 194, 10),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Text(
                            'regresar',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
