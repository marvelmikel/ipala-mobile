import '../controller/stores_controller.dart';
import 'package:get/get.dart';

class StoresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoresController());
  }
}
