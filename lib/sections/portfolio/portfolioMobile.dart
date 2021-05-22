import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roshanfolio/constants.dart';
import 'package:roshanfolio/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text(
            "\nPortfolio",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.06,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.0,
            ),
          ),
          Text(
            "I might not be perfect but I'm always willing to try something new and learn\n👨‍💻 Here are few samples of my previous work 👨‍💻\n\n",
            style: GoogleFonts.montserrat(fontWeight: FontWeight.w200),
            textAlign: TextAlign.center,
          ),
          CarouselSlider.builder(
            itemCount: kProjectsLinks.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ProjectCard(
                  cardWidth: width < 650 ? width * 0.8 : width * 0.4,
                  projectIcon: kProjectsIcons[i],
                  projectTitle: kProjectsTitles[i],
                  projectDescription: kProjectsDescriptions[i],
                  projectLink: kProjectsLinks[i],
                  backImage: kProjectsBanner[i],
                  bottomWidget: Image.network(
                    "https://img.icons8.com/material-sharp/384/ffffff/google-play.png",
                    height: height * 0.04,
                  )),
            ),
            options: CarouselOptions(
                height: height * 0.5,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                hoverColor: kPrimaryColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {
                  launchURL("https://github.com/roshandroids");
                },
                child: Text(
                  "See More at GitHub",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              MaterialButton(
                hoverColor: kPrimaryColor.withAlpha(150),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
                onPressed: () {
                  launchURL("https://gitlab.com/roshanode");
                },
                child: Text(
                  "See More at Gitlab",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
