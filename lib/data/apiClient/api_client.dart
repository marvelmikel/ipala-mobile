import 'package:ipala/core/app_export.dart';
import 'package:ipala/core/utils/pref_utils.dart';
import 'package:ipala/core/utils/progress_dialog_utils.dart';
import 'package:ipala/data/models/register/post_register_resp.dart';

class ApiClient extends GetConnect {
  var url = Get.find<EnvConfig>().config.base_url;

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {
        "Accept":
            "${Get.find<PrefUtils>().getApplicationJson() ?? 'application/json'}",
        "content-type":
            "${Get.find<PrefUtils>().getApplicationJson() ?? 'application/json'}"
      };
      request.headers.addAll(headers);
      return request;
    });
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future<PostRegisterResp> createRegister(
      {Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post('$url/auth/register',
          headers: headers, body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      rethrow;
    }
  }
}
