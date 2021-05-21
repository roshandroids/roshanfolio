import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roshanfolio/animations/bottomAnimation.dart';
import 'package:roshanfolio/widget/serviceCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshanfolio/constants.dart';

class ServiceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          Text(
            "What services do I provide ?\n\n",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "💻 Let's get your ideas turn into real products 📱\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          CarouselSlider.builder(
            itemCount: kServicesIcons.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ServiceCard(
                cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                serviceIcon: kServicesIcons[i],
                serviceTitle: kServicesTitles[i],
                serviceDescription: kServicesDescriptions[i],
                serviceLink: kServicesLinks[i],
              ),
            ),
            options: CarouselOptions(
                scrollPhysics: BouncingScrollPhysics(),
                height: height * 0.45,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ), // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: width < 1200
          //           ? MainAxisAlignment.spaceEvenly
          //           : MainAxisAlignment.center,
          //       children: [
          //         WidgetAnimator(
          //           child: ServiceCard(
          //             cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
          //             cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
          //             serviceIcon: kServicesIcons[0],
          //             serviceTitle: kServicesTitles[0],
          //             serviceDescription: kServicesDescriptions[0],
          //             serviceLink: kServicesLinks[0],
          //           ),
          //         ),
          //         SizedBox(
          //           width: width * 0.03,
          //         ),
          //         WidgetAnimator(
          //           child: ServiceCard(
          //             cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
          //             cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
          //             serviceIcon: kServicesIcons[1],
          //             serviceTitle: kServicesTitles[1],
          //             serviceDescription: kServicesDescriptions[1],
          //             serviceLink: kServicesLinks[1],
          //           ),
          //         ),
          //         SizedBox(
          //           width: width * 0.03,
          //         ),
          //         WidgetAnimator(
          //           child: ServiceCard(
          //             cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
          //             cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
          //             serviceIcon: kServicesIcons[2],
          //             serviceTitle: kServicesTitles[2],
          //             serviceDescription: kServicesDescriptions[2],
          //             serviceLink: kServicesLinks[2],
          //           ),
          //         ),
          //       ],
          //     ),
          //     SizedBox(
          //       height: height * 0.04,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
