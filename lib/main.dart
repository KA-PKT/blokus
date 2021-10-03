import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'Block.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blokus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Blokus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.blue,
            width: 400,
            height: 400,
            child: Column(children: <Widget>[
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
              Expanded(
                child: Container(child: drawOneLine()),
              ),
            ]),
          ),
          Container(
              child: createBlock([
            [0, 1],
            [1, 1]
          ])),
        ],
      ),
    );
  }

  Widget drawOneLine() {
    return Row(children: <Widget>[
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
      Expanded(
        child: drawBox(),
      ),
    ]);
  }

  Widget drawBox() {
    return Container(
      margin: EdgeInsets.all(1.0),
      color: Colors.white,
    );
  }
}
