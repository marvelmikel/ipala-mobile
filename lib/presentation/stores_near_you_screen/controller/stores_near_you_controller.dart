import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/stores_near_you_screen/models/stores_near_you_model.dart';

class StoresNearYouController extends GetxController {
  Rx<StoresNearYouModel> storesNearYouModelObj = StoresNearYouModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
