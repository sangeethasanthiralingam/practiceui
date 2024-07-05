import 'package:flutter/material.dart';

class FittedBoxWidget extends StatefulWidget {
  const FittedBoxWidget({super.key});

  @override
  State<FittedBoxWidget> createState() => _FittedBoxWidgetState();
}

class _FittedBoxWidgetState extends State<FittedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const FittedBox(
        child: Text(
          'sangee',
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      
    );
    
  }
}
