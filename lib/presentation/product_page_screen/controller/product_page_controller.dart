import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/product_page_screen/models/product_page_model.dart';

class ProductPageController extends GetxController {
  Rx<ProductPageModel> productPageModelObj = ProductPageModel().obs;

  RxString radioGroup = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
