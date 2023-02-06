import '../controller/store_homepage_controller.dart';
import 'package:get/get.dart';

class StoreHomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreHomepageController());
  }
}
