import 'package:flutter/material.dart';

class Screen3ex extends StatefulWidget {
  const Screen3ex({Key? key}) : super(key: key);

  @override
  State<Screen3ex> createState() => _Screen3exState();
}

class _Screen3exState extends State<Screen3ex> {
  @override
  Widget build(BuildContext context) {
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
                  Image.asset("ug"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    '',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
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
