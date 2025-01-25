import 'package:flutter/material.dart';


class ListingArgs {
  String title;
  VoidCallback filterListings;

  ListingArgs(
    this.title,
    this.filterListings
  );
}