import 'package:flutter/material.dart';
import 'package:sharecrop_app/components/app_bars/main_app_bar.dart';
import 'package:sharecrop_app/screens/produce_info/produce_info_body.dart';



class ProduceInfoScreen extends StatelessWidget {
  static const String routeName = "/info";
  const ProduceInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: MainAppBar(),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    body: ProduceInfoBody(
      produceName: "Broccoli",
      quantity: '10 bushels',
      location: "Atlanta",
      pickupInstructions: "Pickup at the back gate",
      expirationDate: "10/02/2024",

      
    ),
   );
  }
  
}