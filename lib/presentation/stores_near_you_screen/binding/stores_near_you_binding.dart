import '../controller/stores_near_you_controller.dart';
import 'package:get/get.dart';

class StoresNearYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoresNearYouController());
  }
}
