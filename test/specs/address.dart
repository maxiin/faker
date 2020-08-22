import 'package:test/test.dart';
import 'package:faker/faker.dart';

void main() {
  var faker = Faker();

  group('address', () {
    test('should be able to zip code', () {
      for (var i = 0; i < 10; i++) {
        expect(faker.address.zipCode(),
            anyOf(matches(r'^[0-9]{5}$'), matches(r'^[0-9]{5}([-][0-9]{4})$')));
      }
    });

    test('should be able to generate city', () {
      for (var i = 0; i < 20; i++) {
        expect(
            faker.address.city(),
            anyOf(matches(r'^[^ ]+ [^ ]+[^]+$'), matches(r'^[^ ]+ [^ ]+$'),
                matches(r"^[\w']+[\w]+$")));
      }
    });

    test('should be able to generate city prefix', () {
      expect(faker.address.cityPrefix(), matches(RegExp(r'^[^ ]+ [^ ]+$')));
    });

    test('should be able to generate city suffix', () {
      expect(faker.address.citySuffix(), matches(RegExp(r'^[a-z]+$')));
    });

    test('should be able to generate street name', () {
      expect(faker.address.streetName(), matches(RegExp(r'^[^ ]+ [^ ]+$')));
    });

    test('should be able to generate street address', () {
      expect(faker.address.streetAddress(),
          matches(RegExp(r'^[^ ]+ [^ ]+ [^ ]+$')));
    });

    test('should be able to generate street suffix', () {
      expect(faker.address.streetSuffix(), matches(RegExp(r'^[\w]+$')));
    });

    test('should be able to generate building number', () {
      expect(faker.address.buildingNumber(), matches(RegExp(r'^[\w]+$')));
    });

    test('should be able to generate neighborhood', () {
      expect(faker.address.neighborhood(), matches(RegExp(r'^[\w-/^ ]*$')));
    });

    test('should be able to generate country', () {
      expect(
          faker.address.country(), matches(RegExp(r"^[\w,éÅô\.Ç\-()'^ ]+$")));
    });

    test('should be able to generate country code', () {
      expect(faker.address.countryCode(), matches(RegExp(r'^[A-Z]{2}$')));
    });

    test('should be able to generate continent', () {
      expect(faker.address.continent(), matches(RegExp(r'^[\w\s]*$')));
    });

    test('should be able to generate flag emoji', () {
      final regex = RegExp(
          r'[\uD83C][\uDDE6-\uDDFF][\uD83C][\uDDE6-\uDDFF]'); // Range character select to get emojis that are from AA to ZZ (current or future flags)
      expect(faker.address.countryFlagEmoji(), matches(regex));
    });

    test('should be able to generate valid latitude', () {
      expect(faker.address.lat(), inInclusiveRange(-90, 90));
    });

    test('should be able to generate valid longitude', () {
      expect(faker.address.lng(), inInclusiveRange(-180, 180));
    });

    test('should be able to generate valid latitude', () {
      expect(faker.address.lat(min: -22, max: -24), inInclusiveRange(-24, -22));
    });

    test('should be able to generate valid longitude', () {
      expect(faker.address.lng(min: -47, max: -45), inInclusiveRange(-47, -45));
    });

    test('should be able to generate valid latitude', () {
      expect(faker.address.lat(min: -10, max: 10), inInclusiveRange(-10, 10));
    });

    test('should be able to generate valid longitude', () {
      expect(faker.address.lng(min: -20, max: 20), inInclusiveRange(-20, 20));
    });

    test('should be able to generate valid latitude', () {
      expect(faker.address.lat(min: 0, max: 20), inInclusiveRange(0, 20));
    });

    test('should be able to generate valid longitude', () {
      expect(faker.address.lng(min: 0, max: 10), inInclusiveRange(0, 10));
    });
  });
}
