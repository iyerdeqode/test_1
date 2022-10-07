import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test_1/Pages/Home/controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final homeController = Get.find<HomeController>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child:
            Obx(()=> Text("${homeController.count}"))
            // Text("${homeController.count}")
            ),
            MaterialButton(
              onPressed: (){
                homeController.increment();
              },
              color: Colors.black,
              child: Text("Increment",style: TextStyle(color: Colors.white),),
            ),
            MaterialButton(
              onPressed: (){
                Get.toNamed('/details');
              },
              color: Colors.black,
              child: Text("Details Page",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
