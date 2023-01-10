import 'dart:convert';

ModelApi responseModeApi(String str) =>
    ModelApi.fromMap(json.decode(str))!;

class ModelApi {
  String name;
  String url;
  ModelApi({
    required this.name,
    required this.url,
  });

  static ModelApi? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    try {
      return ModelApi(
        name: map['name'],
        url: map['url'],
      );
    } catch (e) {
      return null;
    }
  }

  static ModelApi? fromJson(String source) =>
      ModelApi.fromMap(json.decode(source));
}
