import 'package:flutter/material.dart';
import 'package:sharecrop_app/screens/splash_screen/splash_screen.dart';

import '../../components/cards/home_card.dart';

class SplashScreenBody extends StatefulWidget {
  @override
  SplashScreenBodyState createState() => SplashScreenBodyState();
  

}


class SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
    itemCount: 10,
    itemBuilder:  (context, index) {
      return HomeCard(
        produceName: "Carrots",
        quantity: "20 pounds",
        location: "South fayetteville",
        description: "These are organic, homegrown carrots from my garden. I have etxras after growing way too many this year.",
      );
    }
   );
  }
  
}