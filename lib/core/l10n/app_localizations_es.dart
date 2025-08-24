// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Rick and Morty';

  @override
  String get allCharacters => 'Todos los personajes';

  @override
  String get charactersNotFound => 'No se encontraron personajes';

  @override
  String get characterDetail => 'Detalle del personaje';

  @override
  String get status => 'Estado:';

  @override
  String get origin => 'Origen:';

  @override
  String get lastLocation => 'Ultima ubicación conocida:';

  @override
  String get species => 'Especie:';

  @override
  String get gender => 'Género:';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get unknown => 'Desconocido';

  @override
  String get language => 'Idioma';
}
