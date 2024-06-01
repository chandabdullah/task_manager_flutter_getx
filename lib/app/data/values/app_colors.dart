import 'package:flutter/material.dart';

class AppColors {
  static const Color ongoing = Color(0XFF95EAFF);
  static const Color pending = Color(0xFFc3b0ff);
  static const Color completed = Color(0xFFdfeb8a);
  static const Color cancelled = Color(0xFFFF9292);
  static const Color inRevision = Color(0xFFffbd92);

  static const Color textColor = Colors.black;

  static Color getColorByType(String type) {
    switch (type) {
      case 'ongoing':
        return ongoing;
      case 'pending':
        return pending;
      case 'completed':
        return completed;
      case 'cancelled':
        return cancelled;
      case 'in-revision':
        return inRevision;
      default:
        return ongoing;
    }
  }
}
