import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('This is a SnackBar!'),
              ),
            );
          },
          child: Image.network(
            'https://picsum.photos/250?image=9',
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}
