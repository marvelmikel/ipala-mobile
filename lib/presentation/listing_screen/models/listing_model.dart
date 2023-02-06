import 'package:get/get.dart';
import 'package:ipala/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listing_item_model.dart';

class ListingModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ].obs;

  RxList<ListingItemModel> listingItemList =
      RxList.filled(4, ListingItemModel());
}
