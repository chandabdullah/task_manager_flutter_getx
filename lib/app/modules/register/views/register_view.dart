import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:task_manager_flutter_getx/app/constants/app_constants.dart';
import 'package:task_manager_flutter_getx/app/routes/app_pages.dart';
import 'package:task_manager_flutter_getx/app/widgets/custom_input.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: Get.textTheme.bodyLarge?.color),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Create Account",
                style: Get.textTheme.titleLarge,
              ),
              const Gap(10),
              Text(
                "Create your new account",
                style: Get.textTheme.bodyMedium,
              ),
              const Gap(30),
              const CustomInputField(
                label: "Name",
                hintText: "Enter your full name",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.person_outline),
              ),
              const Gap(20),
              const CustomInputField(
                label: "Email/username",
                hintText: "Enter your email/username",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.mail_outline),
              ),
              const Gap(20),
              const CustomInputField(
                label: "Password",
                hintText: "Enter your password",
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icon(Icons.lock_outline),
              ),
              const Gap(20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAndToNamed(Routes.HOME);
                  },
                  child: const Text("Create an account"),
                ),
              ),
              const Gap(20),
              Text(
                "Or continue with",
                textAlign: TextAlign.center,
                style: Get.textTheme.bodySmall,
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      label: const Text("Facebook"),
                    ),
                  ),
                  Gap(10.w),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.apple),
                      label: const Text("Apple"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Already have an account?",
              style: Get.textTheme.bodySmall,
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
