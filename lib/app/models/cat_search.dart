import 'package:json_annotation/json_annotation.dart';

import 'cat.dart';

part 'cat_search.g.dart';

@JsonSerializable()
class CatSearch {
  List<Cat>? breeds;
  String? id;
  String? url;
  int? width;
  int? height;

  CatSearch({this.breeds, this.id, this.url, this.width, this.height});

   factory CatSearch.fromJson(Map<String, dynamic> json) => _$CatSearchFromJson(json);

  Map<String, dynamic> toJson() => _$CatSearchToJson(this);
}
