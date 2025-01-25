import 'package:flutter/material.dart';

import '../../style/produce_card/produce_card_theme.dart';

class ChangeUsernameSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
           Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height / 70),
        child: Text(
          "Change username",
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
          expands: false,
          maxLength: 20,
          decoration: InputDecoration(
            contentPadding: ProduceCardTheme.padding,
            hintText: "New Username"
          ),
        ),
      ),
      TextButton(
        onPressed: (){
        // TODO: Add post to posts db
      },
      child: Text(
        "Confirm",
        style: TextStyle(
          color: Theme.of(context).secondaryHeaderColor
        ),
        ),
      )
        ],
      ),
    );
  }

}