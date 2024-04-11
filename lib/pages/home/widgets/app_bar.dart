import 'package:flutter/material.dart';

import '/constants.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({super.key})
      : super(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/more2.png',
              color: Colors.white,
              width: 20,
            ),
          ),
        );
}
