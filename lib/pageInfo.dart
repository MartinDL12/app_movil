import 'package:flutter/material.dart';

class PageInfo extends StatefulWidget {
  final String nameData;

  const PageInfo({Key key, this.nameData}) : super(key: key);
  @override
  State<PageInfo> createState() => _PageInfoState(nameData);
}

class _PageInfoState extends State<PageInfo> {
  final String nameData;

  _PageInfoState(this.nameData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100, 10),
        centerTitle: true,
        title: Text('Información del Usuario'),
      ),
      body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 200),
              Text(
                "Nombre del usuario:",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 10),
              Text(
                "${nameData}",
                style: TextStyle(fontSize: 30),
              )
            ],
          )),
    );
  }
}
