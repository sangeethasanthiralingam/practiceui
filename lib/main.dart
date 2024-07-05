import 'package:flutter/material.dart';
import 'package:practiceui/widgets/clipper/wave_clipper.dart';
import 'package:practiceui/widgets/profile%20card/profile.dart';
import 'package:practiceui/widgets/review/review.dart';
import 'package:practiceui/widgets/size-maintain/snak_bar.dart';
import 'package:practiceui/widgets/size-maintain/visibility.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child:Clipper()
          // PopupWidget(),
          // ReviewWidget(),
          // VisibleWidget()
          // SnackBarWidget()
          // FittedBoxWidget()
          // WrapWidget()
          // AvatarWidget(),
          // ExpandedWidget(),
          // FlexibleWidget()
          //  RichTextWidgets(),

        ),
      ),
    );
  }
}
