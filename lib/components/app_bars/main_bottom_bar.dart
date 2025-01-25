import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharecrop_app/screens/splash_screen/splash_screen.dart';

import '../../constants.dart';
import '../modal_sheets/new_post_sheet.dart';

class MainBottomAppBar extends StatelessWidget{
  const MainBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      selectedIconTheme: IconThemeData(
        color: Theme.of(context).primaryColor
      ),
      unselectedIconTheme: IconThemeData(
        color: Theme.of(context).primaryColor
      ),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.feed),
          label: bottomNavBarLabel1,

          ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.add),
          label:  bottomNavBarLabel2
          )
      ]
    
      , onTap: (value) {
        if (value == 0 && ModalRoute.of(context)!.settings.name != "/splash") {
        
          Navigator.pushNamedAndRemoveUntil(context, SplashScreen.routeName, (e) => false);
        } else if (value == 1) {
          showModalBottomSheet(
            context: context,
             builder: (BuildContext context) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height / 2,
                width: MediaQuery.sizeOf(context).width,
                child: NewPostSheet(),
                );
             }
             );
        }
      },
    );

    
  }

}