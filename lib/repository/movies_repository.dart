import '/models/movie.dart';

class MoviesRepository {
  final List<Movie> moviesOnTeather = [
    Movie(
      id: 1,
      name: 'Spider Man',
      img: 'assets/images/on_theater/spider_man_poster.jpg',
      cast: ['Tom Holland\n', 'Tobey Maguire\n', 'Andrew Garfield'],
      director: 'Jon Watts',
      genre: ['Action', 'Super Hero', 'Sci-Fi'],
      duration: '150 min',
      ageRating: 12,
    ),
    Movie(
      id: 2,
      name: 'Matrix',
      img: 'assets/images/on_theater/matrix_poster.jpg',
      cast: ['Keanu Reeves', 'Carrie-Anne Moss', 'Neil Patrick Harris'],
      director: 'Lana Wachowski',
      genre: ['Action', 'Sci-Fi', 'Fantasy'],
      duration: '150 min',
      ageRating: 14,
    ),
    Movie(
      id: 3,
      name: 'Uncharted',
      img: 'assets/images/on_theater/uncharted_poster.jpg',
      cast: ['Tom Holland', 'Mark Wahlberg', 'Antonio Banderas'],
      director: 'Ruben Fleischer',
      genre: ['Adventure', 'Action', 'Fantasy'],
      duration: '115 min',
      ageRating: 12,
    ),
    Movie(
      id: 4,
      name: 'Moon Fall',
      img: 'assets/images/on_theater/moon_fall_poster.jpeg',
      cast: ['Halle Berry', 'Patrick Wilson', 'John Bradley'],
      director: 'Roland Emmerich',
      genre: ['Action', 'Sci-Fi', 'Fantasy'],
      duration: '130 min',
      ageRating: 14,
    ),
  ];

  final List<Movie> moviesComingSoon = [
    Movie(
      id: 5,
      name: 'Doctor Strange',
      img: 'assets/images/coming_soon/doctor_strange_poster.jpg',
      cast: ['Benedict Cumberbatch', 'Elizabeth Olsen', 'Benedict Wong'],
      director: 'Sam Raimi',
      genre: ['Action', 'Super Hero', 'Sci-Fi'],
      duration: 'soon',
      ageRating: 14,
    ),
    Movie(
      id: 6,
      name: 'The Batman',
      img: 'assets/images/coming_soon/the_batman_poster.jpg',
      cast: ['Robert Pattinson', 'Zoë Kravitz', 'Paul Dano'],
      director: 'Matt Reeves',
      genre: ['Action', 'Super Hero', 'Crime'],
      duration: 'soon',
      ageRating: 14,
    ),
    Movie(
      id: 7,
      name: 'Thor',
      img: 'assets/images/coming_soon/thor_poster.jpg',
      cast: ['Chris Hemsworth', 'Natalie Portman', 'Christian Bale'],
      director: 'Taika Waititi',
      genre: ['Action', 'Super Hero', 'Fantasy'],
      duration: 'soon',
      ageRating: 12,
    ),
    Movie(
      id: 8,
      name: 'Morbius',
      img: 'assets/images/coming_soon/morbius_poster.jpg',
      cast: ['Jared Leto', 'Adria Arjona', 'Matt Smith'],
      director: 'Daniel Espinosa',
      genre: ['Horror', 'Super Hero', 'Fantasy'],
      duration: 'soon',
      ageRating: 14,
    ),
  ];
}
