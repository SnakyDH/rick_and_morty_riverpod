import 'package:json_annotation/json_annotation.dart';

part 'get_characters_list_response_dto.g.dart';

@JsonSerializable()
class GetCharactersListResponseDto {
  final GetCharactersPaginationResponseDto info;
  final List<GetCharactersResultResponseDto> results;

  GetCharactersListResponseDto({required this.info, required this.results});

  factory GetCharactersListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetCharactersListResponseDtoFromJson(json);
}

@JsonSerializable()
class GetCharactersPaginationResponseDto {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  GetCharactersPaginationResponseDto({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory GetCharactersPaginationResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$GetCharactersPaginationResponseDtoFromJson(json);
}

@JsonSerializable()
class GetCharactersResultResponseDto {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final List<String> episode;
  final String created;

  GetCharactersResultResponseDto({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.url,
    required this.episode,
    required this.created,
  });

  factory GetCharactersResultResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetCharactersResultResponseDtoFromJson(json);
}
