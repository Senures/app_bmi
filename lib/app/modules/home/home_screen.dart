import 'package:bmi_app/app/modules/extension/padding_extension.dart';
import 'package:bmi_app/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff313131),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400.0,
                  height: 50.0,
                  //color: Colors.amber,
                  child: const Text(
                    "BMI Calculator",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "What you are?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff9DF1C3)),
                          child: const Icon(
                            Icons.female,
                            size: 35.0,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Male",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          child: const Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 35.0,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Female",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Divider(
                    color: Colors.white12,
                    thickness: 3.0,
                  ),
                ),
                const Text(
                  "Whats your age?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "27",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 67,
                      fontWeight: FontWeight.w500),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Divider(
                    color: Colors.white12,
                    thickness: 3.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Whats your height?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white12),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 25.0),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none),
                        controller: controller.height,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Whats your weight?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white12),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 25.0),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none),
                        controller: controller.weight,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60.0,
                ),
                InkWell(
                  onTap: () {
                    controller.bodyMassCalculate();
                  },
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 300.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: const Color(0xff9DF1C3)),
                      child: const Text(
                        "Calculate Your BMI",
                        style: TextStyle(
                            letterSpacing: .5,
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ).padding(),
          ),
        ),
      ),
    );
  }
}
