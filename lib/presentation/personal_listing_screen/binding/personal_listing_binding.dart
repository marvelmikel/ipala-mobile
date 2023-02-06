import '../controller/personal_listing_controller.dart';
import 'package:get/get.dart';

class PersonalListingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalListingController());
  }
}
