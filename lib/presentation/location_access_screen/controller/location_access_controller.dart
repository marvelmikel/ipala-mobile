import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/location_access_screen/models/location_access_model.dart';

class LocationAccessController extends GetxController {
  Rx<LocationAccessModel> locationAccessModelObj = LocationAccessModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
