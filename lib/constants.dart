import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  "https://img.icons8.com/color/50/000000/gitlab.png",
];

const kSocialLinks = [
  "https://www.facebook.com/roshandroids/",
  "https://www.instagram.com/roshandroids/",
  "https://twitter.com/Roshandroids",
  "https://www.linkedin.com/in/roshan-shrestha-317bb3156/",
  "https://github.com/roshandroids",
  "https://gitlab.com/roshanode"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Python",
  "Java",
  "Git",
];

final kTools1 = ["HTML", "CSS", "Bootstrap", "JavaScript"];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "Full App Development",
  "Web Development",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "Currently, I am only involved in developing Android Apps using Flutter, I am not able to develop for iOS as I don't own a MacBook currently, so can't test or debug apps for iOS. Hopefully I will get one and start my journey in iOS development too. :)",
  "Although I'm mainly a flutter mobile app developer but I also love to develop websites, I can design and develop websites as per your need. So, feel free to ask me for getting you a website done.",
  "I'm trying to learn every new emerging technologies out there and in journey of learning, I would love to contribute to open source community too more in upcoming days which will definately help other developers.\nCheck out my GitHub Profile @roshandroids also my Gitlab profile @roshanode",
];

final kServicesLinks = [
  "https://play.google.com/store/apps/developer?id=Roshan+Shrestha",
  "https://roshansth.com.np/",
  "https://github.com/roshandroids"
];

// projects
final kProjectsBanner = [
  "assets/projects/digital_krishi.png",
  "assets/projects/dogtor.png",
  "assets/projects/easy_csp.png",
  "assets/projects/pdf_slot.png",
  "assets/projects/roshanfolio.png",
];

final kProjectsIcons = [
  "assets/projects/digital_krishi_logo.png",
  "assets/projects/dogtor_logo.png",
  "assets/projects/easycsp_logo.png",
  "assets/projects/pdf_slot_logo.png",
  "assets/projects/roshanfolio_logo.png",
];

final kProjectsTitles = [
  "Digital Krishi",
  "Dogtor",
  "Easy CSP",
  "PDF Slot",
  "Roshanfolio",
];

final kProjectsDescriptions = [
  "Digital Krishi is a mobile application that tends to provide a digital solution related to agriculture. Providing a common platform to share issues and search for solution related to agriculture can really help farmers to save time and increase productivity.",
  "Dogtor is a simple mobile application that provides a common platform for dog-owners and veterinary doctor.",
  "Easy CSP is an application targeted to the cloud workers of Cloudfactory. This application was the winner of the CF Hackathon 2020. This application aims to make the conduction of community service projects easier by letting the cloud workers collaborate.",
  "A platform to read different books on your smartphone. Save it, Read it, Share it. Built with flutter and uses firebase as backend",
  "Roshanfolio is a simple portfolio app of mine.",
];

final kProjectsLinks = [
  "https://github.com/roshandroids/Digital-Krishi",
  "https://gitlab.com/roshanode/dogtor",
  "https://gitlab.com/roshanode/easy_csp",
  "https://gitlab.com/roshanode/pdf-slot",
  "https://github.com/roshandroids/roshanfolio",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Pokhara, Nepal",
  "(+977) 986-0220305",
  "shrestharoshan776@gmail.com"
];
