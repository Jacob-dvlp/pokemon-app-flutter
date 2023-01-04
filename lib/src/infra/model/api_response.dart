import 'dart:convert';

import 'result_model.dart';

ApiResponse responseApiFromJson(String str) =>
    ApiResponse.fromJson(json.decode(str));

class ApiResponse {
  final int count;
  final String next;
  final dynamic previous;
  final List<Result> results;
  ApiResponse({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
