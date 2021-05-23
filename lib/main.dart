import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:math';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BG CHANGER'),
          backgroundColor: Colors.green,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colors = [
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.orange,
    Colors.yellow,
    Colors.grey,
    Colors.transparent,
  ];
  var currentcolors = Colors.white;
  var buttoncolors = Colors.white;
  setrandomcolors() {
    var rnd = Random().nextInt(colors.length);
    var butrnd = Random().nextInt(colors.length);
    setState(() {
      currentcolors = colors[rnd];
      buttoncolors = colors[butrnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentcolors,
      child: Center(
        child: RaisedButton(
          color: buttoncolors,
          padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 10.0),
          child: Text(
            'Change it!!',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          onPressed: setrandomcolors,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(500.0)),
        ),
      ),
    );
  }
}
