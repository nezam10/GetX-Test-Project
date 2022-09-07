import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/view/one.dart';

import 'two.dart';

class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(One(), transition: Transition.rightToLeft);
              },
              child: Text("Go to next screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.off(Two());
              },
              child: Text("Go to next screen remove this screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "title",
                  "message",
                  duration: Duration(seconds: 1),
                  snackPosition: SnackPosition.TOP,
                  backgroundColor: Colors.purple[200],
                );
              },
              child: Text("Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/four",
                    arguments: ["First Argument", "Secoud Argument"]);
              },
              child: Text("Name Route"),
            ),
          ],
        ),
      ),
    );
  }
}
