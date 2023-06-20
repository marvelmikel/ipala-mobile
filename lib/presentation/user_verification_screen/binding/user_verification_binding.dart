import '../controller/user_verification_controller.dart';
import 'package:get/get.dart';

class UserVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserVerificationController());
  }
}
