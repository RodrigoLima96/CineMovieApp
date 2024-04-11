import 'package:flutter/material.dart';
import '/constants.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      margin: const EdgeInsets.only(top: kDefaultPadding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: Colors.black.withOpacity(0.23),
          )
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade300,
        ),
        onPressed: () {},
        child: Text(
          'Buy',
          style: textStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
