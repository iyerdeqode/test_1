import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_1/Pages/Home/controller/home_controller.dart';

import '../controller/details_controller.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final detailsController = Get.find<DetailsController>();

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Now count is: ${homeController.count}"),
            ),
            TextFormField(
              controller: detailsController.textEditingController,
              onChanged: (value) {
                detailsController.onChangeEmailTextController(value);
              },
            ),
            Obx(
              () => Text("Now count is: ${detailsController.emailText}"),
            ),
            MaterialButton(
              onPressed: () {
                homeController.increment();
              },
              child: Text("Increment in details view"),
            )
          ],
        ),
      ),
    );
  }
}
