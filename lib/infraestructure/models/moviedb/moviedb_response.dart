// To parse this JSON data, do
//
//     final movieDbResponse = movieDbResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'moviedb_response.freezed.dart';
part 'moviedb_response.g.dart';

MovieDbResponse movieDbResponseFromJson(String str) => MovieDbResponse.fromJson(json.decode(str));

String movieDbResponseToJson(MovieDbResponse data) => json.encode(data.toJson());

@freezed
class MovieDbResponse with _$MovieDbResponse {
  const factory MovieDbResponse({
    Dates? dates,
    int? page,
    List<Result>? results,
    int? totalPages,
    int? totalResults,
  }) = _MovieDbResponse;

  factory MovieDbResponse.fromJson(Map<String, dynamic> json) => _$MovieDbResponseFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    DateTime? maximum,
    DateTime? minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
