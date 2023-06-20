import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/notification_screen/models/notification_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class NotificationController extends GetxController {
  Rx<NotificationModel> notificationModelObj = NotificationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
