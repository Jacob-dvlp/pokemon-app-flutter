// To parse this JSON data, do
//
//     final responseApi = responseApiFromJson(jsonString);

import 'dart:convert';

ResponseApi responseApiFromJson(String str) =>
    ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
  ResponseApi({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  final int? count;
  final dynamic next;
  final dynamic previous;
  final List<ResultType>? results;

  factory ResponseApi.fromJson(Map<String, dynamic> json) => ResponseApi(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<ResultType>.from(
            json["results"].map((x) => ResultType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class ResultType {
  ResultType({
    this.name,
    this.url,
  });

  final String? name;
  final String? url;

  factory ResultType.fromJson(Map<String, dynamic> json) => ResultType(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
