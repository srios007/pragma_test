import 'package:json_annotation/json_annotation.dart';

import 'weight.dart';

part 'cat.g.dart';

@JsonSerializable()
class Cat {
  int? adaptability;
  int? affectionLevel;
  int? childFriendly;
  int? dogFriendly;
  int? energyLevel;
  int? experimental;
  int? grooming;
  int? hairless;
  int? healthIssues;
  int? hypoallergenic;
  int? indoor;
  int? intelligence;
  int? lap;
  int? natural;
  int? rare;
  int? rex;
  int? sheddingLevel;
  int? shortLegs;
  int? socialNeeds;
  int? strangerFriendly;
  int? suppressedTail;
  int? vocalisation;
  String? altNames;
  String? cfaUrl;
  String? countryCode;
  String? countryCodes;
  String? description;
  String? id;
  String? lifeSpan;
  String? name;
  String? origin;
  String? referenceImageId;
  String? temperament;
  String? vcahospitalsUrl;
  String? vetstreetUrl;
  String? wikipediaUrl;
  Weight? weight;

  Cat({
    this.adaptability,
    this.affectionLevel,
    this.altNames,
    this.cfaUrl,
    this.childFriendly,
    this.countryCode,
    this.countryCodes,
    this.description,
    this.dogFriendly,
    this.energyLevel,
    this.experimental,
    this.grooming,
    this.hairless,
    this.healthIssues,
    this.hypoallergenic,
    this.id,
    this.indoor,
    this.intelligence,
    this.lap,
    this.lifeSpan,
    this.name,
    this.natural,
    this.origin,
    this.rare,
    this.referenceImageId,
    this.rex,
    this.sheddingLevel,
    this.shortLegs,
    this.socialNeeds,
    this.strangerFriendly,
    this.suppressedTail,
    this.temperament,
    this.vcahospitalsUrl,
    this.vetstreetUrl,
    this.vocalisation,
    this.weight,
    this.wikipediaUrl,
  });

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);
}
