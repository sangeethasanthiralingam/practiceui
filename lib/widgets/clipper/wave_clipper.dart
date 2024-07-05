import 'dart:ui';
import 'package:flutter/material.dart';

class Clipper extends StatefulWidget {
  const Clipper({super.key});

  @override
  State<Clipper> createState() => _ClipperState();
}

class _ClipperState extends State<Clipper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wave Clipper'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: waveClipper(),
                child: Container(
                  color: Colors.teal,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class waveClipper extends CustomClipper<Path> {
  @override
  Path(Size size) {
    debugPrint(
      size.width.toString()
    );
    var path = new Path();
    path.lineTo(0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height - 50);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 50);
    var secondEndPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
  
}}
