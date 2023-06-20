import 'package:get/get.dart';
import 'basket_item_model.dart';

class BasketModel {
  RxList<BasketItemModel> basketItemList = RxList.filled(6, BasketItemModel());
}
