import 'package:get/get.dart';

import '../controllers/go_premium_controller.dart';

class GoPremiumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GoPremiumController>(
      () => GoPremiumController(),
    );
  }
}
