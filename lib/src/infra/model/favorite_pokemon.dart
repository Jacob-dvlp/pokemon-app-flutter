import 'dart:convert';

PokemonFavorite responseApiFromJson(String str) =>
    PokemonFavorite.fromJson(json.decode(str));

class PokemonFavorite {
  bool? favorite = false;
  String? id;
  String? name;
  String? sprite;
  String? type1;
  String? type2;

  PokemonFavorite({
    this.favorite = false,
    this.id,
    this.name,
    this.sprite,
    this.type1,
    this.type2,
  });
  Map<String, dynamic> toMap() {
    return {
      'favorite': favorite,
      'name': name,
      'id': id,
      'sprite': sprite,
      'type1': type1,
      'type2': type2
    };
  }

  factory PokemonFavorite.fromJson(Map<String, dynamic> json) =>
      PokemonFavorite(
        favorite: json["favorite"],
        id: json["id"],
        name: json["name"],
        sprite: json["sprite"],
        type1: json["type1"],
      );

  String toJson() => json.encode(toMap());
}
