import 'package:get/get.dart';

import '../controller/details_controller.dart';

class DetailsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailsController());
  }
}
