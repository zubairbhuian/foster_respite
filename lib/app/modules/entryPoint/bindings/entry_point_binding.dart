import 'package:foster_respite/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/entry_point_controller.dart';

class EntryPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EntryPointController());
    Get.put(ProfileController());
  }
}
