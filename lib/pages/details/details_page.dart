import 'package:flutter/material.dart';
import 'package:teste/pages/details/widgets/body.dart';
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
