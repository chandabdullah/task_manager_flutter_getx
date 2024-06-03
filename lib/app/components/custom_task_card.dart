import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:task_manager_flutter_getx/app/routes/app_pages.dart';
import '/app/constants/app_constants.dart';
import '/app/data/values/app_colors.dart';

class CustomTaskCard extends StatelessWidget {
  const CustomTaskCard({
    super.key,
    required this.item,
  });

  final String item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          Routes.TASK_DETAIL,
        );
      },
      child: Container(
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
                      style: Get.textTheme.bodySmall!.copyWith(
                        color: AppColors.textColor,
                      ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(kSpacing),
                  child: Text(
                    DateFormat.yMMMEd().format(
                      DateTime.now().add(
                        const Duration(
                          days: 20,
                        ),
                      ),
                    ),
                    style: Get.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
