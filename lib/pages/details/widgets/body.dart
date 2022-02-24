import 'package:flutter/material.dart';
import '/models/movie.dart';
import 'image_and_icons.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(movie: movie),
        ],
      ),
    );
  }
}
