import 'package:cineappflutter/config/constants/environment.dart';
import 'package:cineappflutter/domain/datasources/movies_datasources.dart';
import 'package:cineappflutter/domain/entities/movie.dart';
import 'package:dio/dio.dart';

class MovieDbDataSource extends MoviesDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.movieDbKey,
        'language': 'es-MX',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get("/movie/now_playing");
    final List<Movie> movies = [];

    return [];
  }
}
