import 'dart:math';

import 'package:bmi_app/app/modules/enums/app_enums.dart';
import 'package:bmi_app/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController? height = TextEditingController();
  TextEditingController? weight = TextEditingController();

  int age = 19;
  double bmi = 0.0;
  Gender gender = Gender.female;
  //enum classından değişken
  String status = "";
  String tip = "";
  String moreTips = "";
  Color? statusColor;
  BmiModel? model;

  bodyMassCalculate() {
    if (weight!.text.isEmpty || height!.text.isEmpty) {
      print("burası boş olamazzzzzzz");
    } else {
      hesaplama();
    }
  }

  hesaplama() {
    double a = double.parse(height!.text) / 100;
    double b = a * a;
    bmi = double.parse(weight!.text) / b;

    print("vücut kitle endeksisdsdsd: " + bmi.toString());

    if (bmi < 18.5) {
      Get.toNamed(Routes.RESULT);
      model = BmiModel(
          status: 'Under Weight',
          tip:
              'Being underweight could be a sign youre not eating enough or you may be ill. ',
          moreTips: '\nIf youre underweight, a GP can help.',
          statusColor: Color(0xffFFC93E),
          bmi: bmi,
          gender: gender);
    } else if (bmi >= 18.5 && bmi <= 25) {
      Get.toNamed(Routes.RESULT);
      print("vücut kitle endeksi: " + bmi.toString());
      model = BmiModel(
          status: 'Normal',
          tip: 'Keep up the good work! ',
          moreTips:
              '\nFor tips on maintaining a healthy weight, check out the food and diet and fitness sections.',
          statusColor: const Color(0xff0DC9AB),
          bmi: bmi,
          gender: gender);
    } else if (bmi > 25 && bmi <= 30) {
      Get.toNamed(Routes.RESULT);
      print("vücut kitle endeksi: " + bmi.toString());
      model = BmiModel(
          status: 'Over Weight',
          tip:
              'The best way to lose weight if you are overweight is through a combination of diet and exercise. ',
          moreTips:
              '\nThe BMI calculator will give you a personal calorie allowance to help you achieve a healthy weight safely.',
          statusColor: const Color(0xFFe07422),
          bmi: bmi,
          gender: gender);
    } else {
      Get.toNamed(Routes.RESULT);
      print("vücut kitle endeksi: " + bmi.toString());
      model = BmiModel(
          status: 'Obese',
          tip:
              'The best way to lose weight if you are obese is through a combination of diet and exercise. ',
          moreTips:
              '\nand, in some cases, medicines. See a GP for help and advice.',
          statusColor: const Color(0xffF45656),
          bmi: bmi,
          gender: gender);

      print("vücut kitle endeksi: " + bmi.toString());
    }
  }
}

class BmiModel {
  final String status;
  final String tip;
  final String moreTips;
  final Color? statusColor;
  final double bmi;
  final Gender gender;
  BmiModel(
      {required this.status,
      required this.tip,
      required this.moreTips,
      required this.statusColor,
      required this.bmi,
      required this.gender});
}
