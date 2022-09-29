// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizi_game/controller/getx.dart';

class CustonButton extends GetView<Controllers1ip> {
  const CustonButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 4.0),
        onPressed: () {
          controller.next();
        },
        color: Colors.lightBlue,
        child: const Text(
          'next',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
