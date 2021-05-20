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
  "assets/projects/medkitB.png",
  "assets/projects/quranB.png",
  "assets/projects/hereiamB.png",
  "assets/projects/covidB.png",
];

final kProjectsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/quran.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kProjectsTitles = [
  "MedKit",
  "The Holy Qur'an",
  "Here I Am",
  "COVID-19",
  "Messenger Chat Head UI",
  "flutter.dev - Flutter Web",
  "Earbender",
  "File Transfer Protocol",
  "My Order",
  "Hidev",
];

final kProjectsDescriptions = [
  "A Phramacy app developed using Flutter powered with Firebase as database. It let's you find medicines for some common diseases to save your time and cost.",
  "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter The data is fetched using API. Information about API is given at the bottom of README.md",
  "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
  "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
  "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
  "fFlutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be issues considering the layout on your screen.",
  "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
  "GIt was my End semester project i.e. creating this FTP having a user interface in Java. It simply sends file from Client to Server but not the other way around.",
  "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
  "Its my end semester project for a course Web Technologies. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
];

final kProjectsLinks = [
  "https://github.com/m-hamzashakeel/MedKit-Pharmacy-App-Using-Flutter",
  "https://github.com/m-hamzashakeel/The_Holy_Quran_App",
  "https://github.com/m-hamzashakeel/Here-I-Am-Alert-App",
  "https://github.com/m-hamzashakeel/Covid19-Tracker-App",
  "https://github.com/m-hamzashakeel/Messenger-Chat-Head-Flutter-UI",
  "https://github.com/m-hamzashakeel/flutter.dev-Flutter-Web-Clone",
  "https://github.com/m-hamzashakeel/Earbender_Music_App",
  "https://github.com/m-hamzashakeel/FTP_GUI_Java",
  "https://github.com/m-hamzashakeel/My-Order-Resturant-Ordering-System",
  "https://github.com/m-hamzashakeel/Hidev_Web",
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
