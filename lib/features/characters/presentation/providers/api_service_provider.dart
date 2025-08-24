import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_riverpod/core/api/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_service_provider.g.dart';

@riverpod
ApiService apiService(Ref ref) {
  return ApiService.instance;
}
