import 'package:cine_movie_app/pages/home/widgets/body.dart';
import 'package:flutter/material.dart';
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
