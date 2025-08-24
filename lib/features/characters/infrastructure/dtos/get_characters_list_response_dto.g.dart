// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_characters_list_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCharactersListResponseDto _$GetCharactersListResponseDtoFromJson(
  Map<String, dynamic> json,
) => GetCharactersListResponseDto(
  info: GetCharactersPaginationResponseDto.fromJson(
    json['info'] as Map<String, dynamic>,
  ),
  results: (json['results'] as List<dynamic>)
      .map(
        (e) =>
            GetCharactersResultResponseDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$GetCharactersListResponseDtoToJson(
  GetCharactersListResponseDto instance,
) => <String, dynamic>{'info': instance.info, 'results': instance.results};

GetCharactersPaginationResponseDto _$GetCharactersPaginationResponseDtoFromJson(
  Map<String, dynamic> json,
) => GetCharactersPaginationResponseDto(
  count: (json['count'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  next: json['next'] as String?,
  prev: json['prev'] as String?,
);

Map<String, dynamic> _$GetCharactersPaginationResponseDtoToJson(
  GetCharactersPaginationResponseDto instance,
) => <String, dynamic>{
  'count': instance.count,
  'pages': instance.pages,
  'next': instance.next,
  'prev': instance.prev,
};

GetCharactersResultResponseDto _$GetCharactersResultResponseDtoFromJson(
  Map<String, dynamic> json,
) => GetCharactersResultResponseDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  type: json['type'] as String,
  gender: json['gender'] as String,
  image: json['image'] as String,
  url: json['url'] as String,
  episodes: (json['episodes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  created: json['created'] as String,
);

Map<String, dynamic> _$GetCharactersResultResponseDtoToJson(
  GetCharactersResultResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'type': instance.type,
  'gender': instance.gender,
  'image': instance.image,
  'url': instance.url,
  'episodes': instance.episodes,
  'created': instance.created,
};
