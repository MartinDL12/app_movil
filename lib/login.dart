import 'package:flutter/material.dart';
import 'package:flutter_application_3/page0.dart';
import 'package:flutter_application_3/page2.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";
  String pass = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100, 10),
        centerTitle: true,
        title: Text('AppRest'),
      ),
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 10),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            _userTextField(),
            SizedBox(
              height: 15.0,
            ),
            _userPassword(),
            SizedBox(
              height: 25,
            ),
            _buttonLogin(),
            SizedBox(
              height: 100,
            ),
            _buttonInfo(),
          ],
        ),
      ),
    );
  }

  _userTextField() {
    return Container(
      width: 375,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.alternate_email),
            hintText: 'Example@gmail.com',
            labelText: 'Correo Electronico'),
        onChanged: (String str) {
          user = str;
        },
        onSubmitted: (String str) {
          user = str;
        },
      ),
    );
  }

  _userPassword() {
    return Container(
      width: 375,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.vpn_key),
            hintText: 'Contraseña',
            labelText: 'Contraseña'),
        onChanged: (String str) {
          pass = str;
        },
        onSubmitted: (String str) {
          pass = str;
        },
      ),
    );
  }

  _buttonLogin() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Text(
          'Iniciar sesión',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      elevation: 10,
      color: Color.fromRGBO(42, 200, 194, 10),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (bc) => Page2());
        Navigator.of(context).push(route);
      },
    );
  }

  _buttonInfo() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Text(
          'Información',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      elevation: 10,
      color: Color.fromRGBO(42, 200, 194, 10),
      onPressed: () {
        Route route = MaterialPageRoute(builder: (bc) => Page0());
        Navigator.of(context).push(route);
      },
    );
  }
}
