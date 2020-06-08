import 'package:flutter/material.dart';
import 'package:mjeeauth4/screesns/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Widget signInButtom() {
  return RaisedButton(
    color: Colors.green.shade300,
    child: Text(
      'Sign In',
      style: TextStyle(color: Colors.red.shade600),
    ),
    onPressed: () {},
  );
}

Widget signUpButtom() {
  return RaisedButton(
    color: Colors.green.shade300,
    child: Text(
      'Sign Up',
      style: TextStyle(color: Colors.red.shade600),
    ),
    onPressed: () {
      print('Print SignUP');
      MaterialPageRoute materialPageRoute =
          MaterialPageRoute(builder: (BuildContext context) => Register());
          Navigator.of(context).push(materialPageRoute);
    },
  );
}

Widget showButtom() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      signInButtom(),
      SizedBox(
        width: 4.0,
      ),
      signUpButtom(),
    ],
  );
}

Widget showLogo() {
  return Container(
    width: 120.0,
    height: 120.0,
    child: Image.asset('images/logo.png'),
  );
}

Widget showAppName() {
  return Text(
    'Show App Name',
    style: TextStyle(
      color: Colors.deepPurpleAccent.shade400,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: 'Pacifico',
    ),
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [Colors.white12, Colors.blue])),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showLogo(),
              showAppName(),
              SizedBox(
                height: 12.0,
              ),
              showButtom(),
            ],
          ),
        ),
      )),
    );
  }
}
