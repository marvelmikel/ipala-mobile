import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/profile_screen/models/profile_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
