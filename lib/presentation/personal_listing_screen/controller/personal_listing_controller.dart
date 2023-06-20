import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/personal_listing_screen/models/personal_listing_model.dart';

class PersonalListingController extends GetxController {
  Rx<PersonalListingModel> personalListingModelObj = PersonalListingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
