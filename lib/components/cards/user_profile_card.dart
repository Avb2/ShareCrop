import 'package:flutter/material.dart';
import 'package:sharecrop_app/style/app_theme.dart';

class UserProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
            // Profile Picture and Name
            SizedBox(height: MediaQuery.of(context).size.height / 50),
            Text("avb2", style: Theme.of(context).textTheme.titleLarge),
            Text("South Fayetteville", style: Theme.of(context).textTheme.bodyMedium),

            // Bio
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Gardener. Farmer. Everything.", textAlign: TextAlign.center),
        ),
        ],
      );
  }
  
}