import 'package:flutter/material.dart';

const double kPadding = 15.0;
const double kSpacing = 10.0;
const double kBorderRadius = 7.0;

double kBottomPadding(BuildContext context) {
  return MediaQuery.of(context).padding.bottom;
}

double kTopPadding(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double kRightPadding(BuildContext context) {
  return MediaQuery.of(context).padding.right;
}

double kLeftPadding(BuildContext context) {
  return MediaQuery.of(context).padding.left;
}
