import '../controller/location_access_controller.dart';
import 'package:get/get.dart';

class LocationAccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationAccessController());
  }
}
