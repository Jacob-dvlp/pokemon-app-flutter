class Result {
  Result({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
