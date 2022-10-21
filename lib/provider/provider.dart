import 'package:flutter/material.dart';

class ProviderItem with ChangeNotifier {
  bool isActive = false;
  Color color1 = Colors.blue;
  Color color2 = Colors.red;
  Color color3 = Colors.green;
  Color color4 = Colors.yellow;
  Color color5 = Colors.purple;
  Color color6 = Colors.black;
  Color color7 = Colors.grey;
  Color color8 = Colors.lightBlue;
  Color color9 = Colors.indigo;
  Color color10 = Colors.deepOrange;

  late List colors = [
    color1,
    color2,
    color3,
    color4,
    color5,
    color6,
    color7,
    color8,
    color9,
    color10,
  ];

  late List colors2 = [
    color1 = Colors.black12,
    color2 = Colors.brown,
    color3 = Colors.deepPurple,
    color4 = Colors.lightGreen,
    color5 = Colors.redAccent,
    color6 = Colors.deepOrange,
    color7 = Colors.pink,
    color8 = Colors.grey,
    color9 = Colors.black,
    color10 = Colors.lime,
  ];
}
