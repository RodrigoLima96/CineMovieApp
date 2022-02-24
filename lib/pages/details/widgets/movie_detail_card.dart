import 'package:flutter/material.dart';
import '/constants.dart';

class MovieDetailCard extends StatelessWidget {
  const MovieDetailCard(
      {Key? key,
      required this.icon,
      required this.details,
      required this.color,
      required this.width,
      required this.padding})
      : super(key: key);

  final String icon;
  final List<String> details;
  final Color color;
  final double width, padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: padding,
            bottom: kDefaultPadding - 15,
          ),
          child: Image.asset(
            icon,
            color: color,
            width: width,
          ),
        ),
        for (var i = 0; i < details.length; i++)
          SizedBox(
            height: 20,
            child: Text(
              details[i],
              style: textStyle,
            ),
          )
      ],
    );
  }
}
