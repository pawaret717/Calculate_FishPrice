import 'package:flutter/material.dart';
import 'firstPage.dart';

void main() {
  runApp(const CalFish());
}

class CalFish extends StatefulWidget {
  const CalFish({super.key});

  @override
  State<CalFish> createState() => _CalFishState();
}


class _CalFishState extends State<CalFish> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
        home: A1(),);
  }
}
class Appfinal{
  static List<String> fish1 = ['ปลานิล','ปลาบึก'];
  static String? f;
  static double money = 0;
  static double money2 = 0;
  static double w = 0;
  static double w2 = 0;
}