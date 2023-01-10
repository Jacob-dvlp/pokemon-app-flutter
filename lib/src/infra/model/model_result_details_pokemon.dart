import 'dart:convert';

Pokemon responseApiPokemon({String? str, String? sec}) => Pokemon.fromJson(
      json: json.decode(str!),
      secJson: json.decode(sec!),
    );

class Pokemon {
  String? id;
  String? name;
  String? sprite;
  String? type1;
  String? type2;
  double? hp;
  double? attack;
  double? defense;
  double? speed;
  double? spAttack;
  double? spDefense;
  String? description;
  String? species;
  bool? favorite = false;

  Pokemon({
    this.id,
    this.name,
    this.sprite,
    this.type1,
    this.type2,
    this.hp,
    this.attack,
    this.defense,
    this.speed,
    this.spAttack,
    this.spDefense,
    this.description,
    this.species,
  });

  factory Pokemon.fromJson(
      {Map<String, dynamic>? json, Map<String, dynamic>? secJson}) {
    String pokeId = json!['id'].toString();
    int hp = json['stats'][0]['base_stat'];
    int attack = json['stats'][1]['base_stat'];
    int defense = json['stats'][2]['base_stat'];
    int spAttack = json['stats'][3]['base_stat'];
    int spDefense = json['stats'][4]['base_stat'];
    int speed = json['stats'][5]['base_stat'];
    List descList = secJson!['flavor_text_entries'];
    int? descIndex;
    for (int i = 0; i < descList.length; i++) {
      String? desc = secJson['flavor_text_entries'][i]['language']['name'];
      if (desc == 'en') {
        descIndex = i;
      }
    }
    String? pokeDesc = secJson['flavor_text_entries'][descIndex]['flavor_text'];
    String? pokeSpec = secJson['genera'][7]['genus'];
    double? pokeHp = hp / 100;
    double? pokeAttack = attack / 100;
    double? pokeDef = defense / 100;
    double? pokeSpAttack = spAttack / 100;
    double? pokespDefense = spDefense / 100;
    double? pokeSpeed = speed / 100;
    List? types = json['types'];
    return Pokemon(
      id: pokeId,
      name: json['name'],
      sprite: json['sprites']['front_default'],
      type1: json['types'][0]['type']['name'],
      type2: types!.length == 2 ? json['types'][1]['type']['name'] : null,
      hp: pokeHp,
      attack: pokeAttack,
      defense: pokeDef,
      speed: pokeSpeed,
      spAttack: pokeSpAttack,
      spDefense: pokespDefense,
      description: pokeDesc,
      species: pokeSpec,
    );
  }
}
