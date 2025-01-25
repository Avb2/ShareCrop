import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/app_bars/main_app_bar.dart';
import 'package:sharecrop_app/components/app_bars/main_bottom_bar.dart';
import 'package:sharecrop_app/screens/edit_profile/edit_profile_body.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = "/edit-profile";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: MainAppBar(),
    bottomNavigationBar: MainBottomAppBar(),
    body: EditProfileBody(),
   );
  }
  
}