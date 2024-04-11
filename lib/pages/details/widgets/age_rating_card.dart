import 'package:flutter/material.dart';
import '/constants.dart';

class AgeRatingCard extends StatelessWidget {
  const AgeRatingCard({super.key, required this.age});

  final int age;

  @override
  Widget build(BuildContext context) {
    Color color = (age == 12) ? Colors.yellow[400]! : Colors.orangeAccent;
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding + 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        width: 45,
        height: 40,
        child: Center(
          child: Text(
            age.toString(),
            style: textStyle.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
