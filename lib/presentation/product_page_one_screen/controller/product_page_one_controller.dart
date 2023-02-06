import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/product_page_one_screen/models/product_page_one_model.dart';

class ProductPageOneController extends GetxController {
  Rx<ProductPageOneModel> productPageOneModelObj = ProductPageOneModel().obs;

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
