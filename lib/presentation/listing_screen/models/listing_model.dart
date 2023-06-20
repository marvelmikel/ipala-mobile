import 'package:get/get.dart';
import 'package:ipala/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listing_item_model.dart';

class ListingModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<ListingItemModel> listingItemList =
      RxList.filled(4, ListingItemModel());
}
