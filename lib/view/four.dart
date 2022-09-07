import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/view/home_screen.dart';

class Four extends StatelessWidget {
  Four({super.key});

  var argumentValue = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Four"),
      ),
      body: Center(
        child: argumentValue == null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.offAll(HomeScreen());
                    },
                    child: Text("Go to Home screen remove previous all screen"),
                  ),
                  SizedBox(height: 20),
                  Text("Some Value "),
                  SizedBox(height: 20),
                  Text("Some Value 2"),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.offAll(HomeScreen());
                    },
                    child: Text("Go to Home screen remove previous all screen"),
                  ),
                  SizedBox(height: 20),
                  Text("Some Value :  ${argumentValue[0]} "),
                  SizedBox(height: 20),
                  Text("Some Value 2 :  ${argumentValue[1]} "),
                ],
              ),
      ),
    );
  }
}
