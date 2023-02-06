import '../controller/product_page_one_controller.dart';
import 'package:get/get.dart';

class ProductPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductPageOneController());
  }
}
