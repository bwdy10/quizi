import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizi_game/stringRoutes/string1.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key, required this.title, required this.image, required this.id})
      : super(key: key);
  final String title;
  final String image;
  final String id;

  // ignore: non_constant_identifier_names
  void Tape(BuildContext context) {
    Get.toNamed(Choise.s2, arguments: {
      'title': title,
      'id': id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Tape(context),
      child: Stack(
        children: [
          Image.asset(
            image,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            // ignore: sort_child_properties_last
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            color: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
