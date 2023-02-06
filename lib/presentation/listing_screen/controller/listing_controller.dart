import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/listing_screen/models/listing_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class ListingController extends GetxController {
  Rx<ListingModel> listingModelObj = ListingModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    listingModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    listingModelObj.value.dropdownItemList.refresh();
  }
}
