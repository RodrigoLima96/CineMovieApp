import 'package:flutter/material.dart';
import '/constants.dart';
import '/models/movie.dart';
import 'age_rating_card.dart';
import 'movie_detail_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.7,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding + 30,
                      left: kDefaultPadding,
                      bottom: kDefaultPadding,
                    ),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                MovieDetailCard(
                  icon: 'assets/icons/cast.png',
                  details: movie.cast,
                  color: Colors.amberAccent,
                  width: 35,
                  padding: 0,
                ),
                MovieDetailCard(
                  icon: 'assets/icons/director.png',
                  details: [movie.director],
                  color: Colors.redAccent,
                  width: 35,
                  padding: kDefaultPadding + 5,
                ),
                MovieDetailCard(
                  icon: 'assets/icons/genre.png',
                  details: movie.genre,
                  color: Colors.indigo,
                  width: 45,
                  padding: kDefaultPadding + 5,
                ),
                MovieDetailCard(
                  icon: 'assets/icons/duration.png',
                  details: [movie.duration],
                  color: Colors.grey,
                  width: 35,
                  padding: kDefaultPadding + 5,
                ),
                AgeRatingCard(age: movie.ageRating),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.7,
            height: size.height * 0.7,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
              child: Image.asset(
                movie.img,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
