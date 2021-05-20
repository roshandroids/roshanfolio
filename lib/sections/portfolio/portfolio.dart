import 'package:flutter/material.dart';
import 'package:roshanfolio/sections/portfolio/portfolioDesktop.dart';
import 'package:roshanfolio/sections/portfolio/portfolioMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SizedBox(),

      //  PortfolioMobileTab(),
      tablet: SizedBox(),
      //  PortfolioMobileTab(),
      desktop: SizedBox(),
      //  PortfolioDesktop(),
    );
  }
}
