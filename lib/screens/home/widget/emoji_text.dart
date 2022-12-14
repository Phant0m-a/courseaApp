import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class EmojiText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
          text:const TextSpan(children: [
        TextSpan(
            text: 'Let\s boost your\nbrain power',
            style: TextStyle(
                fontSize: 25, color: kFont, fontWeight: FontWeight.bold)),
        // TextSpan(text:'0', style: TextStyle(fontSize: 26,color: Colors.yellow))
      ])),
    );
  }
}
