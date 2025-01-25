

import 'package:flutter/material.dart';

import '../../components/app_bars/main_app_bar.dart';
import '../../components/app_bars/main_bottom_bar.dart';
import '../../navigation/args/listing_args.dart';
import 'listing_body.dart';

class ListingScreen extends StatelessWidget {
  static String routeName = "/listings";

  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ListingArgs listingArgs = ModalRoute.of(context)!.settings.arguments as ListingArgs;
    return Scaffold(
      appBar: MainAppBar(),
      bottomNavigationBar: MainBottomAppBar(),
      body: ListingBody(listingArgs.title, listingArgs.filterListings)
    );
  }
  
}