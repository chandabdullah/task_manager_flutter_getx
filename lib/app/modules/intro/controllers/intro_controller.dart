import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/image_paths.dart';

class IntroController extends GetxController {
  PageController pageController = PageController();

  int selectedIndex = 0;

  List introScreens = [
    {
      "imagePath": ImagePaths.INTRO_1,
      "title": "Boost Your Productivity and Stay Organized",
      "subtitle":
          "Effortlessly track your tasks, set priorities, and achieve results with our intuitive task manager app",
    },
    {
      "imagePath": ImagePaths.INTRO_2,
      "title": "Efficient Task Management Made Simple",
      "subtitle":
          "Streamline your daily tasks, deadlines, and projects for maximum efficiency and productivity",
    },
    {
      "imagePath": ImagePaths.INTRO_3,
      "title": "Master Your Time and Take Control",
      "subtitle":
          "Seamlessly plan your day, week, and month with our comprehensive task planner, designed to boost your productivity and success",
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
