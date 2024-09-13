class Movie {
  final int id;
  final String title;
  final int releaseYear;
  //constructor
  Movie({required this.id, required this.title, required this.releaseYear});
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: int.parse(json['id']),
        title: json['title'],
        releaseYear: int.parse(json['releaseYear']));
  }
  @override
  String toString() => 'id: $id, title: $title, releaseYear: $releaseYear';
}
