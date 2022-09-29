import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quizi_game/data/data_of_onboarding.dart';
import 'package:quizi_game/stringRoutes/string1.dart';

abstract class Controllers1 extends GetxController {
  next();
  onpage(int index);
}

class Controllers1ip extends Controllers1 {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    if (currentPage > dataOfOnboarding.length - 1) {
      Get.offAllNamed(Choise.s1);
    } else {
      (pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOut));
    }
  }

  @override
  onpage(index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
