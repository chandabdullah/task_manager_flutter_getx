import 'package:flutter/material.dart';

class AppColors {
  static const Color ongoing = Color(0xFF549CEF);
  static const Color pending = Color(0xFFD284FF);
  static const Color completed = Color(0xFF31C76F);
  static const Color cancelled = Color(0xFFEA5747);
  static const Color inRevision = Color(0xFFF39C12);

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
