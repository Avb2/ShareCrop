import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/app_bars/main_app_bar.dart';
import 'package:sharecrop_app/components/app_bars/main_bottom_bar.dart';

import '../../components/cards/home_card.dart';



class ListingBody extends StatelessWidget {
  String title;
  VoidCallback filterListings;
  
  ListingBody(
    this.title,
    this.filterListings,
    {super.key});

  
  @override
  Widget build(BuildContext context) {
   filterListings();
   return Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.height / 100),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height / 40
                ),
                ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return HomeCard(
                  produceName: "Onions",
                  quantity: "10 lbs",
                  location: "South Georgia",
                  description: "We had so many onions this summer!",
                );
              }
            ),
          )
        ],
      );
  }

}