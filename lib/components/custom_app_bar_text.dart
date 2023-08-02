import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class customAppBarText extends StatefulWidget {
  const customAppBarText({super.key});

  @override
  State<customAppBarText> createState() => _customAppBarTextState();
}

class _customAppBarTextState extends State<customAppBarText> {
  bool repeatTrue = true; 

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        pause: customDuration().customDur,
        repeatForever: repeatTrue,
        animatedTexts: [TyperAnimatedText(
          'Currency Converter',
          textStyle: TextStyle(fontSize: 30)
       ),
      ]
    );
  }
}

class customDuration {
  final customDur = Duration(seconds: 10);
}