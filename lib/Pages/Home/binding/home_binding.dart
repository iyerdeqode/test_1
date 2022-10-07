import 'package:get/get.dart';
import 'package:test_1/Pages/Home/controller/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(HomeController());
  }

}