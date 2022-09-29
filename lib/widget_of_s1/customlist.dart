import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizi_game/controller/getx.dart';

import '../data/data_of_onboarding.dart';

class CustomList extends StatelessWidget {
  const CustomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controllers1ip>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              dataOfOnboarding.length,
              (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 700),
                    width: controller.currentPage == index ? 20 : 6,
                    height: 6,
                    color: Colors.blue,
                    margin: const EdgeInsets.only(right: 5),
                  ))
        ],
      ),
    );
  }
}
