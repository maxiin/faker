import 'data/person/languages.dart';
import 'data/person/firstnames.dart';
import 'data/person/lastnames.dart';
import 'random_generator.dart';

class Person {
  static const _prefixes = ['Mr.', 'Mrs.', 'Ms.', 'Miss', 'Dr'];

  static const _suffixes = [
    'Jr.',
    'Sr.',
    'I',
    'II',
    'III',
    'IV',
    'V',
    'MD',
    'DDS',
    'PhD',
    'DVM'
  ];

  const Person();

  /// Generates a name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.name(); // Mrs. Fiona Ward MD
  /// ```
  String name() {
    switch (random.integer(10)) {
      case 0:
        return '${random.element(_prefixes)} ${random.element(firstnames)} '
            '${random.element(lastnames)}';
      case 1:
        return '${random.element(firstnames)} ${random.element(lastnames)} '
            '${random.element(_suffixes)}';
      case 2:
        return '${random.element(_prefixes)} ${random.element(firstnames)} '
            '${random.element(lastnames)} ${random.element(_suffixes)}';
      default:
        return '${random.element(firstnames)} ${random.element(lastnames)}';
    }
  }

  /// Generates a first name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.firstName(); // Fiona
  /// ```
  String firstName() => random.element(firstnames);

  /// Generates a last name.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.lastName(); // Ward
  /// ```
  String lastName() => random.element(lastnames);

  /// Generates a language.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.language(); // Spanish
  /// ```
  String language() => random.element(languages);

  /// Generates a prefix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.prefix(); // Mr.
  /// ```
  String prefix() => random.element(_prefixes);

  /// Generates a suffix.
  ///
  /// Example:
  /// ```dart
  ///   faker.person.suffix(); // Jr.
  /// ```
  String suffix() => random.element(_suffixes);
}
