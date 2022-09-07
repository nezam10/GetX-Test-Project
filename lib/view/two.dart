import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/view/home_screen.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Two"),
            ElevatedButton(
              onPressed: () {
                Get.offAll(HomeScreen(), transition: Transition.rightToLeft);
              },
              child: Text("Go to Home scree remove all previous screen"),
            ),
          ],
        ),
      ),
    );
  }
}
