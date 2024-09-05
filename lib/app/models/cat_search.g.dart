// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatSearch _$CatSearchFromJson(Map<String, dynamic> json) => CatSearch(
      breeds: (json['breeds'] as List<dynamic>?)
          ?.map((e) => Cat.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      url: json['url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CatSearchToJson(CatSearch instance) => <String, dynamic>{
      'breeds': instance.breeds,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
