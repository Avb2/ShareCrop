import 'package:flutter/material.dart';

class ProduceCardTheme {
  static Widget componentPadding = SizedBox(height:8);
  static Widget componentPaddingLarge = SizedBox(height:12);
  static Widget componentPaddingSmall = SizedBox(height:4);
  static EdgeInsets mainMargin = EdgeInsets.symmetric(vertical: 10, horizontal: 16);
  static EdgeInsets padding = EdgeInsets.all(16);
  static RoundedRectangleBorder borderShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      );
}