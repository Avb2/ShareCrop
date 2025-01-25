import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/app_bars/main_app_bar.dart';
import 'package:sharecrop_app/components/app_bars/main_bottom_bar.dart';
import 'package:sharecrop_app/screens/user_profile/user_profile_body.dart';

class UserProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: const MainAppBar(),
    bottomNavigationBar: const MainBottomAppBar(),
    body: UserProfileBody(),
   );
  }
  
}