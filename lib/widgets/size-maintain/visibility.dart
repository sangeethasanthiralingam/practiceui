import 'package:flutter/material.dart';

class VisibleWidget extends StatefulWidget {
  const VisibleWidget({super.key});

  @override
  State<VisibleWidget> createState() => _VisibleWidgetState();
}

class _VisibleWidgetState extends State<VisibleWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: const Text('Button'),
        ),
        Visibility(
          visible: isVisible,
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
      ],
    );
  }
}
