import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roshanfolio/constants.dart';
import 'package:roshanfolio/widget/serviceCard.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "What services do I provide ?\n\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "💻 Let's get your ideas turn into real products 📱\n\n",
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
          ),
          CarouselSlider.builder(
            itemCount: kServicesIcons.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ServiceCard(
                cardWidth: width < 650 ? width * 0.8 : width * 0.5,
                serviceIcon: kServicesIcons[i],
                serviceTitle: kServicesTitles[i],
                serviceDescription: kServicesDescriptions[i],
                serviceLink: kServicesLinks[i],
              ),
            ),
            options: CarouselOptions(
                scrollPhysics: BouncingScrollPhysics(),
                height: height * 0.5,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          )
        ],
      ),
    );
  }
}
