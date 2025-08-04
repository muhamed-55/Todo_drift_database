import 'dart:convert';


import '../consts/colors.dart';
import '../pages/todo/presentation/view/Widgets/custom_snackbar.dart';
import 'api_error_response.dart';

class BaseRepository {
  String getErrorMessage(String apiResponse) {
     final responseJson = const JsonDecoder().convert(apiResponse);
    if (apiResponse.isNotEmpty) {
      print("BASE ${apiResponse}");
      customSnackBar(apiResponse, ColorCode.red);
      return apiResponse;
    } else {
      print("BASE ${apiResponse}");

      return "Something went wrong please try again later";
    }
  }
}
