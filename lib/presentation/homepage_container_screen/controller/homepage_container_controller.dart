import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_container_screen/models/homepage_container_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class HomepageContainerController extends GetxController {
  Rx<HomepageContainerModel> homepageContainerModelObj =
      HomepageContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
