import 'package:flutter/material.dart';
import 'package:roshanfolio/constants.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn({
    required this.icon,
    required this.socialLink,
    required this.height,
    required this.horizontalPadding,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
        ),
        iconSize: height,
        onPressed: () => launchURL(this.socialLink),
        hoverColor: kPrimaryColor,
      ),
    );
  }
}
