// To parse this JSON data, do
//
//     final responseApi = responseApiFromJson(jsonString);

import 'dart:convert';

ResultApiPokemon responseApiPokemonFromJson(String str) =>
    ResultApiPokemon.fromJson(json.decode(str));

class ResultApiPokemon {
  int baseExperience;
  List<Species> forms;
  List<Ability> ability;
  List<dynamic> heldItems;
  int id;
  String name;
  int order;
  Species species;
  List<TypePokemon> types;
  ResultApiPokemon(
      {required this.baseExperience,
      required this.forms,
      required this.heldItems,
      required this.id,
      required this.name,
      required this.order,
      required this.species,
      required this.types,
      required this.ability});

  factory ResultApiPokemon.fromJson(Map<String, dynamic> json) =>
      ResultApiPokemon(
        baseExperience: json["base_experience"],
        forms:
            List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"],
        name: json["name"],
        order: json["order"],
        species: Species.fromJson(json["species"]),
        types: List<TypePokemon>.from(
            json["types"].map((x) => TypePokemon.fromJson(x))),
        ability: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
      );
}

class TypePokemon {
  TypePokemon({
    this.type,
  });

  int? slot;
  Species? type;

  factory TypePokemon.fromJson(Map<String, dynamic> json) => TypePokemon(
        type: Species.fromJson(json["type"]),
      );
}

class Species {
  Species({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}

class Ability {
  Ability({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
