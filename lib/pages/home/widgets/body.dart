import 'package:flutter/material.dart';
import 'coming_soon_movies.dart';
import 'header_search.dart';
import 'movies_on_teather.dart';
import 'session_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeaderSearch(),
          SessionTitle(title: 'On Teather'),
          MoviesOnTeather(),
          SessionTitle(title: 'Coming Soon'),
          ComingSoonMovies(),
        ],
      ),
    );
  }
}
