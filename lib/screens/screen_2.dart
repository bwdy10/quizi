import 'package:flutter/material.dart';
import 'package:quizi_game/data/data_of_s2.dart';
import 'package:quizi_game/widget_0f_s2/item.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("chooce your favorite topic !")),
        titleTextStyle: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w900,
        ),
        backgroundColor: const Color.fromARGB(255, 151, 186, 214),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 7 / 9,
            crossAxisSpacing: 20,
            mainAxisSpacing: 40,
          ),
          itemBuilder: (context, i) => Item(
            title: dataOfScreen2[i].title,
            image: dataOfScreen2[i].image,
            id: dataOfScreen2[i].id,
          ),
        ),
      ),
    );
  }
}
