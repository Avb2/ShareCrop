import 'package:flutter/material.dart';
import 'package:sharecrop_app/constants.dart';
import 'package:sharecrop_app/screens/listings_screen/listing_screen.dart';

import '../../screens/user_profile/user_profile_screen.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 1,
      elevation: 1,
      centerTitle: true,
      title: RichText(
  text: TextSpan(
    style: DefaultTextStyle.of(context).style, // Default text style
    children: [
      TextSpan(
        text: title.substring(0,5),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width / 15,
          color:Theme.of(context).primaryColor
          ), // Blue text
      ),
      TextSpan(
        text: title.substring(5),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width / 20,
          color: Theme.of(context).secondaryHeaderColor
          ), // Red text
      ),
    ],
  ),
),
actions: [
  IconButton(onPressed: (){}, icon: const Icon(Icons.message_outlined)),
  IconButton(onPressed: (){
    if (ModalRoute.of(context)!.settings.name != ListingScreen.routeName &&
    ModalRoute.of(context)!.settings.name != UserProfileScreen.routeName) {
      print(ModalRoute.of(context)!.settings.name);
       Navigator.pushNamed(context, UserProfileScreen.routeName);
    }
   
  }, icon: Icon(Icons.person)),

],
      foregroundColor: Colors.green,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
}