import 'package:get/get.dart';
import 'store_homepage_item_model.dart';

class StoreHomepageModel {
  RxList<StoreHomepageItemModel> storeHomepageItemList =
      RxList.filled(4, StoreHomepageItemModel());
}
