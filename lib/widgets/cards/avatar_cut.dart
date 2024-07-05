import 'package:flutter/material.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({super.key});

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return 
    const CircleAvatar(
      radius: 150,
      // backgroundColor: Colors.black,
      backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
    );
  }
}
