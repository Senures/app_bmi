import 'package:bmi_app/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends GetView<HomeController> {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff313131),
      body: Center(
        child: Text(
          controller.bmi.toString(),
          style: const TextStyle(
              color: Colors.grey, fontSize: 67, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
