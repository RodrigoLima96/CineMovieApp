class Movie {
  final int id;
  final String name;
  final String img;
  final List<String> cast;
  final String director;
  final List<String> genre;
  final String duration;
  final int ageRating;

  Movie({
    required this.id,
    required this.name,
    required this.img,
    required this.cast,
    required this.director,
    required this.genre,
    required this.duration,
    required this.ageRating,
  });
}
