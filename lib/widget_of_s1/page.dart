import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizi_game/controller/getx.dart';

import '../data/data_of_onboarding.dart';

class CustomPage extends GetView<Controllers1ip> {
  const CustomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onpage(val);
        },
        itemCount: dataOfOnboarding.length,
        itemBuilder: (context, i) => Column(
          children: [
            Image.asset(
              dataOfOnboarding[i].image,
              height: 300,
              width: 450,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              dataOfOnboarding[i].title,
              style: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Text(
                  dataOfOnboarding[i].body,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
