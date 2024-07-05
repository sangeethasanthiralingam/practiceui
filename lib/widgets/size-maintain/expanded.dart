import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
          color: Colors.red,
        )
        ),
        Expanded(child: Container(
          color: Colors.blue,
        )
        ),Expanded(child: Container(
          color: Colors.green,
        )
        ),
      ],
    );
  }
}