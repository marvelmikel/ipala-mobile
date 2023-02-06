import '../controller/basket_controller.dart';
import 'package:get/get.dart';

class BasketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BasketController());
  }
}
