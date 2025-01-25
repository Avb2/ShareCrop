

import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/app_bars/main_app_bar.dart';

import '../../components/app_bars/main_bottom_bar.dart';
import 'splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  static final String routeName = "/splash";

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      bottomNavigationBar: MainBottomAppBar(),
      body: SplashScreenBody(),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
