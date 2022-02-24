import 'package:flutter/material.dart';
import 'header_search.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HeaderSearch(),
        ],
      ),
    );
  }
}
