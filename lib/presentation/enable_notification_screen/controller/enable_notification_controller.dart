import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/enable_notification_screen/models/enable_notification_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class EnableNotificationController extends GetxController {
  Rx<EnableNotificationModel> enableNotificationModelObj =
      EnableNotificationModel().obs;

  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
