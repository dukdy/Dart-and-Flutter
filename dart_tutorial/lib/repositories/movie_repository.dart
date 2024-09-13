import 'dart:convert';
import 'dart:async';
import 'package:dart_tutorial/models/movie.dart';
import 'package:http/http.dart' as http;

const urlGetMovies = 'https://reactnative.dev/movies.json';
Future<List<Movie>> fetchMovie() async {
  List<Movie> movies = [];
  try {
    final response = await http.get(Uri.parse(urlGetMovies));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      movies =
          (json['movies'] as List).map((item) => Movie.fromJson(item)).toList();
    }
    return movies;
  } on Exception catch (e) {
    throw Exception('Failed to fetch Films: ${e.toString()}');
  }
}
