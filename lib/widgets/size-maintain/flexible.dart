import 'package:flutter/material.dart';

class FlexibleWidget extends StatefulWidget {
  const FlexibleWidget({super.key});

  @override
  State<FlexibleWidget> createState() => _FlexibleWidgetState();
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 2,
            child: Container(
              color: Colors.orangeAccent,
            )),
            Flexible(
            flex: 2,
            child: Container(
              color: Colors.cyanAccent,
            )),
            Flexible(
            flex: 3,
            child: Container(
              color: Colors.cyan,
            )),
            Flexible(
            flex: 4,
            child: Container(
              color: Colors.green,
            ))
      ],
    );
  }
}
