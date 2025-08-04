import 'package:get/get.dart';

import '../routes/app_pages.dart';
import '../services/auth_service.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    timeout = const Duration(minutes: 2);
    httpClient.addRequestModifier<dynamic>((request) {
    //  final userInfo = AuthService.to.userInfo;
    //   if ((userInfo?.message?.accessToken?.toString().isNotEmpty ?? true)) {
    //     request.headers.putIfAbsent("Authorization",
    //         () => ('Bearer ${userInfo?.message?.accessToken}'));
    //   }
    //


      printInfo(info: request.headers.toString());
      printInfo(info: request.url.toString());

      return request;
    });

    httpClient.addResponseModifier((request, response) {
      printInfo(info: request.url.toString());
      printInfo(info: response.bodyString!);

      if (response.unauthorized || response.status.code == 401) {
      //  AuthService.to.logout();
      //  Get.offNamed(Routes.LOGIN);
      }
      return response;
    });
  }
}
