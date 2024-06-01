import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/app_constants.dart';
import 'package:task_manager_flutter_getx/app/data/values/app_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Get.theme.splashColor,
                    backgroundImage: const NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/nextlevelsoftpk.appspot.com/o/Files%2Ffile-20240409072352625_OPj0A.jpeg?alt=media",
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 30,
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Text(
                "Hi",
                style: Get.textTheme.titleMedium,
              ),
              Text(
                "Chand Abdullah",
                style: Get.textTheme.titleLarge,
              ),
              const Gap(20),
              Container(
                width: Get.width,
                padding: const EdgeInsets.all(kPadding),
                decoration: BoxDecoration(
                  color: AppColors.ongoing,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.timer_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    const Gap(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ongoing",
                                style: Get.textTheme.titleLarge?.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              const Gap(5),
                              Text(
                                "10 tasks",
                                style: Get.textTheme.bodyMedium?.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_outward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Gap(10),
              SizedBox(
                height: 200,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(kPadding),
                              decoration: BoxDecoration(
                                color: AppColors.pending,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pending",
                                          style: Get.textTheme.titleLarge
                                              ?.copyWith(
                                            color: Colors.black,
                                          ),
                                        ),
                                        const Gap(10),
                                        Text(
                                          "05 tasks",
                                          style: Get.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.pending_outlined,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(kPadding),
                              decoration: BoxDecoration(
                                color: AppColors.completed,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Completed",
                                          style: Get.textTheme.titleLarge
                                              ?.copyWith(
                                            color: Colors.black,
                                          ),
                                        ),
                                        const Gap(10),
                                        Text(
                                          "17 tasks",
                                          style: Get.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Gap(10),
                                  Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.task_alt_outlined,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(kPadding),
                        decoration: BoxDecoration(
                          color: AppColors.cancelled,
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(7),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.cancel_outlined,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cancel",
                                  style: Get.textTheme.titleLarge?.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                                const Gap(10),
                                Text(
                                  "02 tasks",
                                  style: Get.textTheme.bodyMedium?.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "All Tasks",
                      style: Get.textTheme.titleLarge,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Get.theme.cardColor,
                    child: IconButton(
                      onPressed: () {},
                      color: Get.theme.primaryColor,
                      padding: const EdgeInsets.all(5),
                      icon: const Icon(
                        Icons.arrow_right_alt,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              ListView.separated(
                itemCount: controller.tasks.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(20);
                },
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.tasks[index];
                  return Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Get.theme.cardColor,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      boxShadow: [
                        BoxShadow(
                          color: Get.theme.splashColor,
                          blurRadius: 7,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: double.infinity,
                          width: 10,
                          decoration: BoxDecoration(
                            color: AppColors.getColorByType(item),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(kBorderRadius),
                              bottomLeft: Radius.circular(kBorderRadius),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: kSpacing,
                                  vertical: kSpacing / 2,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.getColorByType(item),
                                  borderRadius: BorderRadius.circular(
                                    kBorderRadius * 3,
                                  ),
                                ),
                                child: Text(
                                  item.replaceAll('-', ' ').capitalize ?? "",
                                ),
                              ),
                              Text(
                                "App Design",
                                style: Get.textTheme.bodyLarge,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: Get.textTheme.bodyMedium?.color,
                                    size: 17,
                                  ),
                                  const Gap(3),
                                  Text(
                                    "10:20-12:20",
                                    style: Get.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(10),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
