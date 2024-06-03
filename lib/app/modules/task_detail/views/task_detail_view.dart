import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/app_constants.dart';

import '../controllers/task_detail_controller.dart';

class TaskDetailView extends GetView<TaskDetailController> {
  const TaskDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kPadding),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "App Design",
                style: Get.textTheme.titleLarge,
              ),
              const Gap(10),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: Get.textTheme.bodyMedium,
              ),
              const Gap(10),
              Row(
                children: [
                  const Icon(Icons.calendar_month_outlined),
                  const Gap(10),
                  Expanded(
                    child: Text(
                      "Mon, 4 May 2022" "Wed, 5 Jun 2022",
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  const Icon(Icons.category_outlined),
                  const Gap(10),
                  Expanded(
                    child: Text(
                      "UI / UX Design",
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                children: [
                  const Icon(Icons.people_alt_outlined),
                  const Gap(10),
                  Expanded(
                    child: Text(
                      "3 Members",
                      style: Get.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Text(
                "Activity",
                style: Get.textTheme.bodyLarge,
              ),
              const Gap(10),
              ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(20);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
                        ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "John Doe",
                                    style: Get.textTheme.bodyLarge,
                                  ),
                                ),
                                const Icon(Icons.more_horiz),
                              ],
                            ),
                            const Gap(10),
                            Container(
                              padding: const EdgeInsets.all(kSpacing),
                              decoration: BoxDecoration(
                                color: Get.theme.splashColor,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                              ),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                style: Get.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Get.theme.cardColor,
        ),
        padding: EdgeInsets.fromLTRB(
          kPadding,
          kSpacing,
          kPadding,
          0 + kBottomPadding(context),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            hintText: "Add comment...",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ),
        ),
      ),
    );
  }
}
