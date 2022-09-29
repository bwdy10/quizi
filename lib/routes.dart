import 'package:flutter/material.dart';

import 'package:quizi_game/screens/screen_2.dart';
import 'package:quizi_game/screens/screen_3.dart';
import 'package:quizi_game/stringRoutes/string1.dart';

Map<String, Widget Function(BuildContext)> routess = {
  Choise.s1: (context) => const Screen2(),
  Choise.s2: (context) => const Screen3(),
};
