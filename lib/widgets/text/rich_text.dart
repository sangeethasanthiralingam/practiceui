import 'package:flutter/material.dart';

class RichTextWidgets extends StatefulWidget {
  const RichTextWidgets({super.key});

  @override
  State<RichTextWidgets> createState() => _RichTextWidgetsState();
}

class _RichTextWidgetsState extends State<RichTextWidgets> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines:2,
      text: const TextSpan(
      style:TextStyle(color: Colors.blue),
      children: <TextSpan>[
        TextSpan(text: 'This is an example of the '),
        TextSpan(text: 'RichText ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34)),
        TextSpan(text: ' widget from '),
        TextSpan(text: 'flutter',style: TextStyle(
          color: Colors.red,
        ))
      ],
    ));
  }
}