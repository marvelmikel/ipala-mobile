import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/basket_screen/models/basket_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class BasketController extends GetxController {
  Rx<BasketModel> basketModelObj = BasketModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
