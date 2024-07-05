import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(spacing: 10, runSpacing: 10, children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.orange,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.pink,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
      ]),
    );
  }
}
