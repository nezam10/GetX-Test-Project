import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/view/four.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("One"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offAll(Four(), transition: Transition.rightToLeft);
              },
              child: Text("Go to Four"),
            ),
          ],
        ),
      ),
    );
  }
}
