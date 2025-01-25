import 'package:flutter/material.dart';
import 'package:sharecrop_app/screens/edit_profile/edit_profile_screen.dart';
import 'package:sharecrop_app/screens/listings_screen/listing_body.dart';
import 'package:sharecrop_app/screens/listings_screen/listing_screen.dart';
import 'package:sharecrop_app/screens/produce_info/produce_info_screen.dart';
import 'package:sharecrop_app/screens/splash_screen/splash_screen.dart';
import 'package:sharecrop_app/screens/user_profile/user_profile_screen.dart';


import 'style/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShareCrop',
      theme: AppTheme.theme,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        ProduceInfoScreen.routeName: (context) => ProduceInfoScreen(),
        UserProfileScreen.routeName: (context) => UserProfileScreen(),
        ListingScreen.routeName: (context) => ListingScreen(),
        EditProfileScreen.routeName: (context) => EditProfileScreen()
      },
      home: SplashScreen(),
    );
  }
}
