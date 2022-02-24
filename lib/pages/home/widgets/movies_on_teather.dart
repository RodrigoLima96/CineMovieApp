import 'package:flutter/material.dart';
import '../../details/details_page.dart';
import '/repository/movies_repository.dart';
import 'movie_card.dart';

class MoviesOnTeather extends StatelessWidget {
  const MoviesOnTeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movies = MoviesRepository().moviesOnTeather;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (var i = 0; i < movies.length; i++)
          MovieCard(
            image: movies[i].img,
            title: movies[i].name,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                    movie: movies[i],
                  ),
                ),
              );
            },
          )
      ]),
    );
  }
}
