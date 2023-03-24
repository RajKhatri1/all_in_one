import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class all_in_one_provider extends ChangeNotifier{
  WebViewController? webViewController;

  List musicname = [
    "Spotyfy",
    "Gana",
    "Jio Savan",
    "Hungama",
    "Wynk",
  ];
  List eduname = [
    "ByJus",
    "Unacademy",
    "QuizLet",
    "Instruture",
    "Education",
  ];
List ecomname =[
  "Amazon",
  "Flipkart",
  "Meesho",
  "Shopsy",
  "D-mart",
];

  List foodname = [
    "Swiggy",
    "Zomato",
    "Bigbasket",
    "NdTv",
    "The Kitchen",
  ];

  List ecomimg = [
    "assets/images/amazon.png",
    "assets/images/flipkart.png",
    "assets/images/meesho1.png",
    "assets/images/shopsy.jpg",
    "assets/images/dmart.jpg",
  ];
  List ottname = [
    "Hotstar",
    "NetFlix",
    "Sony liv",
    "Jio TV",
    "Voot",
  ];

  List ottimg = [
    "assets/images/hotstar.jpg",
    "assets/images/net.jpg",
    "assets/images/sony.png",
    "assets/images/jio.jpg",
    "assets/images/voot.png",
  ];

  List foodimg = [

    "assets/images/swiggy.png",
    "assets/images/zomato.png",
    "assets/images/bb.png",
    "assets/images/ndtv.png",
    "assets/images/tk.png",
    // "assets/images/spotify.png",
    // "assets/images/gana.png",

  ];

  List eduimg = [
    "assets/images/byjus.png",
    "assets/images/unaca.png",
    "assets/images/quiz.png",
    "assets/images/instructure.png",
    "assets/images/education.png",
  ];


  List musicimg = [
    "assets/images/spo.png",
    "assets/images/gaa.png",
    "assets/images/jiosavan.jpeg",
    "assets/images/hungama.png",
    "assets/images/wynk.png",
  ];

  List webecomlist = [
    "https://www.amazon.in/",
    "https://www.flipkart.com/",
    "https://www.meesho.com/",
    "https://www.shopify.com/",
    "https://www.dmartindia.com/",
  ];

  List webedulist = [
    "https://byjus.com/",
    "https://unacademy.com/",
    "https://quizlet.com/",
    "https://www.instructure.com/",
    "https://www.education.com/",
    "https://open.spotify.com/",
    "https://gaana.com/",
  ];

  List webmusiclist = [
    "https://open.spotify.com/",
    "https://gaana.com/",
    "https://www.jiosaavn.com/",
    "https://www.hungama.com/",
    "https://wynk.in/music",
  ];

  List webfoodlist = [
    "https://www.swiggy.com/",
    "https://www.zomato.com/india",
    "https://www.bigbasket.com/",
    "https://food.ndtv.com/",
    "https://www.thekitchn.com/",

  ];

  List webottlist = [
    "https://www.hotstar.com/in",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",
    "https://www.jiotv.com/",
    "https://www.voot.com/",
  ];

  void music(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${webmusiclist[index]}"));
  }

  void eduview(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${webedulist[index]}"));
  }

  void ottview(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${webottlist[index]}"));
  }

  void itinview(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${webecomlist[index]}"));
  }

  void initview(int index)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${webfoodlist[index]}"));
  }
}