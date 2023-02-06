import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/stores_screen/models/stores_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class StoresController extends GetxController {
  Rx<StoresModel> storesModelObj = StoresModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
