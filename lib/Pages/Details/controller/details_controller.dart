import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController{
  var text = "Hello";
  RxString emailText = "".obs;
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    // TODO: implement onInit
    emailText.value = "hello";
    textEditingController.text = emailText.value;
    super.onInit();
  }



  void onChangeEmailTextController(String value) {
    emailText.value = value;
    print(emailText);
  }
}

