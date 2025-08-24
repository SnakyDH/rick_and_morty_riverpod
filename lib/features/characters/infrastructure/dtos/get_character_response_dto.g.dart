// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_character_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCharacterResponseDto _$GetCharacterResponseDtoFromJson(
  Map<String, dynamic> json,
) => GetCharacterResponseDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  type: json['type'] as String,
  gender: json['gender'] as String,
  image: json['image'] as String,
  url: json['url'] as String,
  created: json['created'] as String,
  origin: OriginResponseDto.fromJson(json['origin'] as Map<String, dynamic>),
  location: LocationResponseDto.fromJson(
    json['location'] as Map<String, dynamic>,
  ),
  episodes: (json['episodes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$GetCharacterResponseDtoToJson(
  GetCharacterResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'type': instance.type,
  'gender': instance.gender,
  'image': instance.image,
  'url': instance.url,
  'created': instance.created,
  'origin': instance.origin,
  'location': instance.location,
  'episodes': instance.episodes,
};

OriginResponseDto _$OriginResponseDtoFromJson(Map<String, dynamic> json) =>
    OriginResponseDto(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$OriginResponseDtoToJson(OriginResponseDto instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

LocationResponseDto _$LocationResponseDtoFromJson(Map<String, dynamic> json) =>
    LocationResponseDto(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$LocationResponseDtoToJson(
  LocationResponseDto instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
