import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text:
              "Hello There ! I'm Roshan Shrestha, a Flutter developer, front-end web developer and fun loving guy from NEPAL.\n\nI have been developing mobile apps for over 2 years now, I develop apps with appealing UI and robust performance. I have done various projects with different programming languages , and also have been contributing to open source communities like GitHub and got valuable learning experience throughout the timespan.\n\I've recently graduated in Computer Science and Software Engineering from ",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
        TextSpan(
          text: "University of Bedfordshire",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, true)
              : _textStyle(fontSize + 2, true),
        ),
        TextSpan(
          text: " , and have been working as Full-Time ",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
        TextSpan(
          text: "Flutter Developer at Yellow Nepal Pvt. Ltd.",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, true)
              : _textStyle(fontSize + 2, true),
        ),
      ]),
    );
  }
}
