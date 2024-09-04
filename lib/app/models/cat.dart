import 'package:json_annotation/json_annotation.dart';

import 'weight.dart';

part 'cat.g.dart';

@JsonSerializable()
class Cat {
  int? adaptability;
  @JsonKey(name: 'affection_level')
  int? affectionLevel;
  @JsonKey(name: 'child_friendly')
  int? childFriendly;
  @JsonKey(name: 'dog_friendly')
  int? dogFriendly;
  @JsonKey(name: 'energy_level')
  int? energyLevel;
  int? experimental;
  int? grooming;
  int? hairless;
  @JsonKey(name: 'health_issues')
  int? healthIssues;
  int? hypoallergenic;
  int? indoor;
  int? intelligence;
  int? lap;
  int? natural;
  int? rare;
  int? rex;
  @JsonKey(name: 'shedding_level')
  int? sheddingLevel;
  @JsonKey(name: 'short_legs')
  int? shortLegs;
  @JsonKey(name: 'social_needs')
  int? socialNeeds;
  @JsonKey(name: 'stranger_friendly')
  int? strangerFriendly;
  @JsonKey(name: 'suppressed_tail')
  int? suppressedTail;
  int? vocalisation;
  @JsonKey(name: 'alt_names')
  String? altNames;
  @JsonKey(name: 'cfa_url')
  String? cfaUrl;
  @JsonKey(name: 'country_code')
  String? countryCode;
  @JsonKey(name: 'country_codes')
  String? countryCodes;
  String? description;
  String? id;
  @JsonKey(name: 'life_span')
  String? lifeSpan;
  String? name;
  String? origin;
  @JsonKey(name: 'reference_image_id')
  String? referenceImageId;
  String? temperament;
  @JsonKey(name: 'vcahospitals_url')
  String? vcahospitalsUrl;
  @JsonKey(name: 'vetstreet_url')
  String? vetstreetUrl;
  @JsonKey(name: 'wikipedia_url')
  String? wikipediaUrl;
  Weight? weight;
  @JsonKey(ignore: true)
  String? imageUrl;

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
    this.imageUrl,
  });

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  Map<String, dynamic> toJson() => _$CatToJson(this);
}
