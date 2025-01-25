import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/cards/user_profile_card.dart';
import 'package:sharecrop_app/components/cards/listing_nav_card.dart';
import 'package:sharecrop_app/navigation/args/listing_args.dart';

class UserProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
  children: [
   UserProfileCard(),

   ListingNavCard(
    "Active Listings",
    "5 Items currently available", 
    () => Navigator.pushNamed(context, "/listings", arguments: ListingArgs("Active Listings", () { }))
   ),

    ListingNavCard(
      'Expired Listings',
      '12 items shared in the past',
      () => Navigator.pushNamed(context, "/listings", arguments: ListingArgs("Listing History", () { })) 
    ),

    // Settings and Actions
    ListTile(
      title: Text('Edit Profile'),
      leading: Icon(Icons.edit),
      onTap: () => Navigator.pushNamed(context, "/edit-profile"), 
    ),

    ListTile(
      title: Text('Logout'),
      leading: Icon(Icons.logout),
      onTap: () => {}, 
    ),
  ],
);

  }
  
}