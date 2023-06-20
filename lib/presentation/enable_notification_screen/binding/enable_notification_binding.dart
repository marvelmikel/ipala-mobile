import '../controller/enable_notification_controller.dart';
import 'package:get/get.dart';

class EnableNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnableNotificationController());
  }
}
