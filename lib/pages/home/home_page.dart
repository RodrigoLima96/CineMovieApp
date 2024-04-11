import 'package:flutter/material.dart';
import 'package:teste/pages/home/widgets/body.dart';
import 'widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: const HomeBody(),
    );
  }
}
