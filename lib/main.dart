import 'package:all_in_one/screen/provider/allprovider.dart';
import 'package:all_in_one/screen/view/all_in_one_screen.dart';
import 'package:all_in_one/screen/view/ecomPage.dart';
import 'package:all_in_one/screen/view/educationpage.dart';
import 'package:all_in_one/screen/view/foodscreen.dart';
import 'package:all_in_one/screen/view/homepage.dart';
import 'package:all_in_one/screen/view/musicpage.dart';
import 'package:all_in_one/screen/view/ottpage.dart';
import 'package:all_in_one/screen/view/webscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => all_in_one_provider() ,)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Home_Screen(),
          'web' : (context) => web_screen(),
          'home' : (context) => all_in_one_screen(),
          'food' : (context) => food_screen(),
          'ecom' : (context) => ecom_screen(),
          'ott' : (context) => ott_screen(),
          'edu' : (context) => Education_screen(),
          'music' : (context) => music_screen(),

        },
      ),
    ),
  );
}
