import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/store_homepage_screen/models/store_homepage_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class StoreHomepageController extends GetxController {
  Rx<StoreHomepageModel> storeHomepageModelObj = StoreHomepageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
