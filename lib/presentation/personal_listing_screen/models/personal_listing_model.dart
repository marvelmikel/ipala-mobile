import 'package:get/get.dart';
import 'listgoogle_item_model.dart';
import 'listgoogle_three_item_model.dart';
import 'listgoogle_six_item_model.dart';
import 'listgoogle_eight_item_model.dart';
import 'listgoogle_ten_item_model.dart';

class PersonalListingModel {
  RxList<ListgoogleItemModel> listgoogleItemList =
      RxList.filled(3, ListgoogleItemModel());

  RxList<ListgoogleThreeItemModel> listgoogleThreeItemList =
      RxList.filled(3, ListgoogleThreeItemModel());

  RxList<ListgoogleSixItemModel> listgoogleSixItemList =
      RxList.filled(2, ListgoogleSixItemModel());

  RxList<ListgoogleEightItemModel> listgoogleEightItemList =
      RxList.filled(2, ListgoogleEightItemModel());

  RxList<ListgoogleTenItemModel> listgoogleTenItemList =
      RxList.filled(2, ListgoogleTenItemModel());
}
