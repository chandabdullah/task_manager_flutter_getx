import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/app_constants.dart';
import 'package:task_manager_flutter_getx/app/constants/image_paths.dart';
import 'package:task_manager_flutter_getx/app/routes/app_pages.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(builder: (_) {
      return Scaffold(
        body: PageView(
          controller: controller.pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (value) {
            controller.selectedIndex = value;
            controller.update();
          },
          children: [
            for (int index = 0; index < controller.introScreens.length; index++)
              Builder(builder: (_) {
                var item = controller.introScreens[index];
                return Padding(
                  padding: const EdgeInsets.all(kPadding),
                  child: SafeArea(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(kPadding),
                              child: SvgPicture.asset(
                                item['imagePath'],
                              ),
                            ),
                          ),
                          const Gap(20),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Text(
                                  item["title"],
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.headlineMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Gap(20),
                                Text(
                                  item["subtitle"],
                                  textAlign: TextAlign.center,
                                  style: Get.textTheme.bodyMedium?.copyWith(
                                    color: Get.textTheme.bodySmall?.color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.all(kPadding),
            child: controller.selectedIndex == 2
                ? ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text(
                      "Get Started",
                      style: Get.textTheme.bodyLarge?.copyWith(
                        color: Get.theme.cardColor,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const StadiumBorder(),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            Colors.transparent,
                          ),
                          overlayColor: MaterialStateProperty.all(
                            Get.theme.splashColor,
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Skip",
                          style: Get.textTheme.bodyMedium,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              controller.introScreens.length,
                              (index) => Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: AnimatedDot(
                                  isActive: controller.selectedIndex == index,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Get.theme.primaryColor,
                        child: IconButton(
                          onPressed: () {
                            controller.pageController.animateToPage(
                              controller.selectedIndex + 1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                            controller.update();
                          },
                          icon: const Icon(
                            Icons.arrow_right_alt_rounded,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      );
    });
  }
}

class AnimatedDot extends StatelessWidget {
  const AnimatedDot({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 20 : 6,
      decoration: BoxDecoration(
        color: isActive
            ? Get.theme.primaryColor
            : Get.theme.primaryColor.withOpacity(.5),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
