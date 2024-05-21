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
    this.genres=const [],
    required this.rating,
    required this.runtime,
    required this.year,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json){
    return switch (json) {
      {
      'title': String title,
      'id': int id,
      'rating': num rating,
      'runtime': int runtime,
      'year': int year,
      'summary': String description,
      'medium_cover_image': String medium_cover_image,
      'genres': List<dynamic> genres, // Cast to List<String> directly
      } =>
          MovieModel(
            id: id,
            title: title,
            img: medium_cover_image,
            description: description,
            genres: genres.whereType<String>().toList(),
            rating: rating,
            runtime: runtime,
            year: year,
          ),
      _ => throw Exception('Invalid movie data format')
    };
  }

}
