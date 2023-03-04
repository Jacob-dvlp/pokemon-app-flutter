import 'dart:convert';

CardModel responseCard(String str) => CardModel.fromJson(json.decode(str));

class CardModel {
  String? id;
  String? name;
  String? sprite;
  String? type1;
  String? type2;

  CardModel({
    this.id,
    this.name,
    this.sprite,
    this.type1,
    this.type2,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    String pokeId = json['id'].toString();
    final List types = json['types'];
    if (types.length == 1) {
      return CardModel(
        id: pokeId,
        name: json['name'],
        sprite: json['sprites']['front_default'],
        type1: json['types'][0]['type']['name'],
        type2: null,
      );
    } else {
      return CardModel(
        id: pokeId,
        name: json['name'],
        sprite: json['sprites']['front_default'],
        type1: json['types'][0]['type']['name'],
        type2: json['types'][1]['type']['name'],
      );
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'sprite': sprite,
      'type1': type1,
      'type2': type2,
    };
  }

  static  CardModel? fromMap(Map<String, dynamic>? map) {
    if (map == null ) return null; 
    try {
      return CardModel(
      id: map['id'],
      name: map['name'],
      sprite: map['sprite'],
      type1: map['type1'],
      type2: map['type2'],
      );
    }catch(e){
      return null;
    }
  }

  String toJson() => json.encode(toMap());

  static CardModel? fromJson(String source) => CardModel.fromMap(json.decode(source));
}
