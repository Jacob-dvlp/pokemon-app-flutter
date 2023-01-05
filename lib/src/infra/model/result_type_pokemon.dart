import 'dart:convert';

ResponseApi responseApiFromJson(String str) =>
    ResponseApi.fromJson(json.decode(str));

class ResponseApi {
  ResponseApi({
    this.results,
  });

  final List<ResultTypePokemon>? results;

  factory ResponseApi.fromJson(Map<String, dynamic> json) => ResponseApi(
        results: List<ResultTypePokemon>.from(
            json["results"].map((x) => ResultTypePokemon.fromJson(x))),
      );
}

class ResultTypePokemon {
  ResultTypePokemon({
    this.name,
    this.url,
  });

  final String? name;
  final String? url;

  factory ResultTypePokemon.fromJson(Map<String, dynamic> json) =>
      ResultTypePokemon(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
