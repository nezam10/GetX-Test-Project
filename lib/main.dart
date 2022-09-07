import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/view/four.dart';
import 'package:getx_test_project/view/home_screen.dart';
import 'package:getx_test_project/view/one.dart';
import 'package:getx_test_project/view/three.dart';
import 'package:getx_test_project/view/two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/one", page: () => One()),
        GetPage(name: "/two", page: () => Two()),
        GetPage(name: "/three", page: () => Three()),
        GetPage(
            name: "/four",
            page: () => Four(),
            transition: Transition.rightToLeft),
      ],
      home: HomeScreen(),
    );
  }
}
