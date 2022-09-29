import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizi_game/controller/getx.dart';
import 'package:quizi_game/widget_of_s1/customButton.dart';
import 'package:quizi_game/widget_of_s1/customlist.dart';
import 'package:quizi_game/widget_of_s1/page.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Controllers1ip());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const CustomPage(),
            Expanded(
              flex: 2,
              child: Column(
                children: const [
                  CustomList(),
                  Spacer(),
                  SizedBox(
                    height: 55,
                  ),
                  CustonButton(),
                  Spacer(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
