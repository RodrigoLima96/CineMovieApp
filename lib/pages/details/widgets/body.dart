import 'package:flutter/material.dart';
import 'package:teste/pages/details/widgets/buy_button.dart';
import '/models/movie.dart';
import 'comments.dart';
import 'image_and_icons.dart';
import 'movie_session.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(movie: movie),
          const MovieSession(),
          const BuyButton(),
          const Comments(),
        ],
      ),
    );
  }
}
