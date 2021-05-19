import 'package:flutter/material.dart';
import 'package:roshanfolio/sections/services/servicesDesktop.dart';
import 'package:roshanfolio/sections/services/servicesMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
