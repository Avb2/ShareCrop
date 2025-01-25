import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/modal_sheets/change_username_sheet.dart';

class EditProfileBody extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 50
        ),
        Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height / 70),
          child: Text(
            "Edit Profile",
            style: Theme.of(context).textTheme.bodyLarge,
            )
        ),
        ListTile(
          title: Text("Change Username"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) => ChangeUsernameSheet(),
          ),
        )

      ],
    );
  }
}