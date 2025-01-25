import 'package:flutter/material.dart';
import 'package:sharecrop_app/style/produce_card/produce_card_theme.dart';

import '../../constants.dart';


class NewPostSheet extends StatelessWidget {
  const NewPostSheet({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height / 70),
        child: Text(
          "Create Post",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height / 50
          ),
          ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: TextField(
          maxLines: null,
          expands: true,
          maxLength: 250,
          decoration: InputDecoration(
            contentPadding: ProduceCardTheme.padding,
            hintText: "Your post here!"
          ),
        ),
      ),

      DropdownMenu(dropdownMenuEntries: 
        crops.map((crop) => DropdownMenuEntry(value: crop, label: crop)).toList()
      ),

      IconButton(onPressed: (){
        // TODO: Add post to posts db
      },
      icon: Icon(
        Icons.send,
        color: Theme.of(context).secondaryHeaderColor,
        ))
    ],
   );
  }
  
}