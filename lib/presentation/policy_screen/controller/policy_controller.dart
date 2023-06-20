import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/policy_screen/models/policy_model.dart';

class PolicyController extends GetxController {
  Rx<PolicyModel> policyModelObj = PolicyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
