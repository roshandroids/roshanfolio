import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roshanfolio/animations/bottomAnimation.dart';
import 'package:roshanfolio/constants.dart';
import 'package:roshanfolio/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactDesktop extends StatelessWidget {
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
            "\nContact",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "Let's get in touch and build something together :)\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                cardWidth: width > 1200 ? width * 0.25 : width * 0.2,
                projectIconData: kContactIcons[i],
                projectTitle: kContactTitles[i],
                projectDescription: kContactDetails[i],
              ),
            ),
            options: CarouselOptions(
                height: height * 0.3,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     WidgetAnimator(
          //       child: ProjectCard(
          //         cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
          //         cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
          //         projectIconData: kContactIcons[0],
          //         projectTitle: kContactTitles[0],
          //         projectDescription: kContactDetails[0],
          //       ),
          //     ),
          //     SizedBox(
          //       width: width * 0.02,
          //     ),
          //     WidgetAnimator(
          //       child: ProjectCard(
          //         cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
          //         cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
          //         projectIconData: kContactIcons[1],
          //         projectTitle: kContactTitles[1],
          //         projectDescription: kContactDetails[1],
          //       ),
          //     ),
          //     SizedBox(
          //       width: width * 0.02,
          //     ),
          //     WidgetAnimator(
          //       child: ProjectCard(
          //         cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
          //         cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
          //         projectIconData: kContactIcons[2],
          //         projectTitle: kContactTitles[2],
          //         projectDescription: kContactDetails[2],
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
