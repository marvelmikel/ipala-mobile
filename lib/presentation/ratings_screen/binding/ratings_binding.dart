import '../controller/ratings_controller.dart';
import 'package:get/get.dart';

class RatingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RatingsController());
  }
}
