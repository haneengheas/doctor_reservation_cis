import 'package:flutter/material.dart';

const darkBlue = Color(0xff063f5d);
const green = Color(0xff096f60);
const white = Color(0xfff5f5f5);
double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar
      ? (screenHeight -
      AppBar().preferredSize.height -
      MediaQuery.of(context).padding.top-MediaQuery.of(context).padding.bottom)
      : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(
    BuildContext context,
    double fraction,
    ) {
  return MediaQuery.of(context).size.width / fraction;
}