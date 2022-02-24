import 'package:flutter/material.dart';
import '/constants.dart';

class SessionTitle extends StatelessWidget {
  const SessionTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      alignment: Alignment.centerLeft,
      height: 25,
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        child: Text(
          title,
          style: textStyle.copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
