import 'package:get/get.dart';

class HomeController extends GetxController{
  var count = 0.obs;
  RxString emailText = "".obs;

  increment() => count++;

  void onChangeEmailTextController(String value) {
    emailText = value.obs;
  }
}