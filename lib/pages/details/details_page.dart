import 'package:cine_movie_app/pages/details/widgets/body.dart';
import 'package:flutter/material.dart';
import '/models/movie.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsBody(movie: movie),
    );
  }
}
