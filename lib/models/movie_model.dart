class MovieModel {
  int id;
  String title;
  String img;
  String description;
  List<String> genres;
  num rating;
  int runtime;
  int year;

  MovieModel({
    required this.id,
    required this.title,
    required this.img,
    required this.description,
    required this.genres,
    required this.rating,
    required this.runtime,
    required this.year,
  });
}
