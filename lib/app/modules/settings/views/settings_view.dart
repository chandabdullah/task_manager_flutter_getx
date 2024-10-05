import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/app_constants.dart';
import 'package:task_manager_flutter_getx/app/modules/home/controllers/home_controller.dart';
import 'package:task_manager_flutter_getx/app/routes/app_pages.dart';
import 'package:task_manager_flutter_getx/config/theme/my_theme.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: kPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Hero(
                        tag: "profile",
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Get.theme.splashColor,
                          backgroundImage: const NetworkImage(
                            "https://fiverr-res.cloudinary.com/image/upload/f_auto,q_auto,t_profile_original/v1/attachments/profile/photo/495e90469bb808f83f44735572e2a6e7-1726940392490/073f53df-f23c-44cb-9bea-b9c363fa6ee7.png",
                          ),
                        ),
                      ),
                      const Gap(10),
                      Text(
                        "Chand Abdullah",
                        style: Get.textTheme.bodyLarge,
                      ),
                      const Gap(3),
                      Text(
                        "Flutter Developer",
                        style: Get.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                SwitchListTile(
                  onChanged: (val) {
                    controller.notificationsEnable = val;
                    controller.update();
                  },
                  value: controller.notificationsEnable,
                  secondary: const Icon(Icons.notifications_rounded),
                  title: Text(
                    "Notifications",
                    style: Get.textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "Show notifications when funds are received",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    controller.soundsEnable = val;
                    controller.update();
                  },
                  value: controller.soundsEnable,
                  secondary: const Icon(Icons.volume_up_rounded),
                  title: Text(
                    "Sounds",
                    style: Get.textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "Play sounds when sending, receiving and exchanging funds",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                SwitchListTile(
                  onChanged: (val) {
                    MyTheme.changeTheme();
                    controller.update();
                    HomeController homeController = Get.find<HomeController>();
                    homeController.update();
                  },
                  value: !MyTheme.getThemeIsLight,
                  secondary: const Icon(Icons.dark_mode_rounded),
                  title: Text(
                    "Dark mode",
                    style: Get.textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "Make it easier for your eyes to adjust from your dimly",
                    style: Get.textTheme.bodySmall,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.language_rounded),
                  title: Text(
                    "Language",
                    style: Get.textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "Change language according to your understanding",
                    style: Get.textTheme.bodySmall,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.privacy_tip_rounded),
                  title: Text(
                    "Privacy",
                    style: Get.textTheme.bodyLarge,
                  ),
                  subtitle: Text(
                    "See our privacy policies to use the application",
                    style: Get.textTheme.bodySmall,
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right_rounded),
                ),
                const Gap(10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding,
                  ),
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    icon: const Icon(
                      Icons.logout,
                      // color: Get.theme.scaffoldBackgroundColor,
                    ),
                    label: const Text(
                      "Logout",
                      style: TextStyle(
                          // color: Get.theme.scaffoldBackgroundColor,
                          ),
                    ),
                  ),
                ),
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         child: Column(
                //           children: [

                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      );
    });
  }
}
