import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import '/app/components/custom_task_card.dart';
import '/app/constants/app_constants.dart';

import '../controllers/all_tasks_controller.dart';

class AllTasksView extends GetView<AllTasksController> {
  const AllTasksView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month_rounded),
          ),
        ],
        // bottom: PreferredSize(
        //   preferredSize: const Size.fromHeight(50),
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(
        //       horizontal: kPadding,
        //     ),
        //     width: Get.width,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       mainAxisSize: MainAxisSize.min,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "September 10",
        //           style: Get.textTheme.bodyLarge,
        //         ),
        //         Text(
        //           "6 tasks",
        //           style: Get.textTheme.bodyMedium,
        //         ),
        //         // HorizontalWeekCalendar(
        //         //   onDateChange: (date) {},
        //         //   minDate: DateTime(2000),
        //         //   maxDate: DateTime.now().add(const Duration(days: 1)),
        //         //   initialDate: DateTime.now(),
        //         //   showNavigationButtons: false,
        //         //   borderRadius: BorderRadius.circular(kBorderRadius),
        //         //   inactiveBackgroundColor: Get.theme.splashColor,
        //         //   inactiveTextColor: Get.theme.hintColor,
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(kPadding),
          itemCount: controller.tasks.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(20);
          },
          itemBuilder: (BuildContext context, int index) {
            var item = controller.tasks[index];
            return CustomTaskCard(item: item);
          },
        ),
      ),
    );
  }
}
