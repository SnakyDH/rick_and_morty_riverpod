import 'package:json_annotation/json_annotation.dart';

part 'get_character_response_dto.g.dart';

@JsonSerializable()
class GetCharacterResponseDto {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final String created;
  final OriginResponseDto origin;
  final LocationResponseDto location;
  final List<String> episode;

  GetCharacterResponseDto({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.url,
    required this.created,
    required this.origin,
    required this.location,
    required this.episode,
  });

  factory GetCharacterResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetCharacterResponseDtoFromJson(json);
}

@JsonSerializable()
class OriginResponseDto {
  final String name;
  final String url;
  OriginResponseDto({required this.name, required this.url});
  factory OriginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OriginResponseDtoFromJson(json);
}

@JsonSerializable()
class LocationResponseDto {
  final String name;
  final String url;
  LocationResponseDto({required this.name, required this.url});
  factory LocationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseDtoFromJson(json);
}
