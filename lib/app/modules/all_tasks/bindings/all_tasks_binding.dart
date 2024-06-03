import 'package:get/get.dart';

import '../controllers/all_tasks_controller.dart';

class AllTasksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllTasksController>(
      () => AllTasksController(),
    );
  }
}
