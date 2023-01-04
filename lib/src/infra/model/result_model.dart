class ResultApi {
  ResultApi({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory ResultApi.fromJson(Map<String, dynamic> json) => ResultApi(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
