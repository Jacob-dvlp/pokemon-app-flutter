import 'dart:convert';

ResponseApiType responseApiTypeFromJson(String str) =>
    ResponseApiType.fromJson(json.decode(str));

class ResponseApiType {
  ResponseApiType({
    this.results,
  });

  final List<ResultTypePokemon>? results;

  factory ResponseApiType.fromJson(Map<String, dynamic> json) => ResponseApiType(
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
