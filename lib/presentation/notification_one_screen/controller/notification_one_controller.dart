import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/notification_one_screen/models/notification_one_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class NotificationOneController extends GetxController {
  Rx<NotificationOneModel> notificationOneModelObj = NotificationOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
