import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import '/app/components/custom_task_card.dart';
import '/app/constants/app_constants.dart';
import '/app/data/values/app_colors.dart';
import '/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kSpacing,
              vertical: 0,
            ),
            child: Hero(
              tag: 'profile',
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Get.theme.splashColor,
                backgroundImage: const NetworkImage(
                  "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/495e90469bb808f83f44735572e2a6e7-1726940392490/073f53df-f23c-44cb-9bea-b9c363fa6ee7.png",
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text(
              //   "Hi,",
              //   style: Get.textTheme.bodyMedium!.copyWith(
              //       // color: Get.theme.appBarTheme.iconTheme?.color,
              //       ),
              // ),
              // const Gap(5),
              Text(
                "Home",
                style: Get.textTheme.bodyLarge!.copyWith(
                    // color: Get.theme.appBarTheme.iconTheme?.color,
                    ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.SETTINGS);
              },
              iconSize: 30,
              icon: const Icon(
                Icons.settings_outlined,
              ),
            ),
            const Gap(kSpacing),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          color: AppColors.textColor,
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
                                    color: AppColors.textColor,
                                  ),
                                ),
                                const Gap(5),
                                Text(
                                  "10 tasks",
                                  style: Get.textTheme.bodyMedium?.copyWith(
                                    color: AppColors.textColor,
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
                                color: AppColors.textColor,
                              ),
                            ),
                            child: const Icon(
                              Icons.arrow_outward_rounded,
                              color: AppColors.textColor,
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
                                              color: AppColors.textColor,
                                            ),
                                          ),
                                          const Gap(10),
                                          Text(
                                            "05 tasks",
                                            style: Get.textTheme.bodyMedium
                                                ?.copyWith(
                                              color: AppColors.textColor,
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
                                        color: AppColors.textColor,
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
                                              color: AppColors.textColor,
                                            ),
                                          ),
                                          const Gap(10),
                                          Text(
                                            "17 tasks",
                                            style: Get.textTheme.bodyMedium
                                                ?.copyWith(
                                              color: AppColors.textColor,
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
                                        color: AppColors.textColor,
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
                                  color: AppColors.textColor,
                                ),
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cancel",
                                    style: Get.textTheme.titleLarge?.copyWith(
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  const Gap(10),
                                  Text(
                                    "02 tasks",
                                    style: Get.textTheme.bodyMedium?.copyWith(
                                      color: AppColors.textColor,
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
                        onPressed: () {
                          Get.toNamed(Routes.ALL_TASKS);
                        },
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
                    return CustomTaskCard(item: item);
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
