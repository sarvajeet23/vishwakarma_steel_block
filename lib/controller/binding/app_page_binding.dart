import 'package:get/get.dart';

import '../html_controller.dart';

class AppPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HTMLController>(() => HTMLController(), fenix: true);
  }
}
