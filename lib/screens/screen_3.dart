import 'package:flutter/material.dart';
import 'package:quizi_game/data/data_of_s2.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final screenTitle = argument['title'];
    final screenid = argument['id'];

    final screenfilter = dataOfscreen3.where(
      (trip) {
        return trip.id.contains(screenid!);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          screenTitle!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Screen3ex(),
    );
  }
}

class Screen3ex extends StatefulWidget {
  const Screen3ex({Key? key}) : super(key: key);

  @override
  State<Screen3ex> createState() => _Screen3exState();
}

class _Screen3exState extends State<Screen3ex> {
  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final screenTitle = argument['title'];
    final screenid = argument['id'];

    final screenfilter = dataOfscreen3.where(
      (trip) {
        return trip.id.contains(screenid!);
      },
    ).toList();
    return ListView.builder(
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              flex: 16,
              child: Column(
                children: [
                  Image.asset(screenfilter[index].image),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    screenfilter[index].text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {},
                  color: Colors.indigo,
                  child: const Text(
                    'true',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: const Text(
                    'false',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
      itemCount: 1,
    );
  }
}
