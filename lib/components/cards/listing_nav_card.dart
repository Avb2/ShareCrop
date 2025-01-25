import 'package:flutter/material.dart';



class ListingNavCard extends StatelessWidget {
  String label;
  String description;
  VoidCallback onTap;

  ListingNavCard(
    this.label,
    this.description, 
    this.onTap,
    {super.key}
  );


   @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      subtitle: Text(description),
      trailing: const Icon(Icons.arrow_forward),
      onTap: onTap, 
    );
  }
  

 
  
}
