import 'package:dart_vehicle_hierarchy/dart_vehicle_hierarchy.dart';
import 'package:test/test.dart';

void main() {
  group('Vehicle Tests', () {
    test('Vehicle type initialization', () {
      var vehicle = Vehicle('Generic');
      expect(vehicle.type, equals('Generic'));
    });

    test('Vehicle describeType method', () {
      var vehicle = Vehicle('Generic');
      expect(
          () => vehicle.describeType(), prints('This is a Generic vehicle\n'));
    });
  });

  group('Car Tests', () {
    test('Car is a subclass of Vehicle', () {
      var car = Car('Car');
      expect(car, isA<Vehicle>());
    });
  });

  group('Sedan Tests', () {
    test('Sedan is a subclass of Car', () {
      var sedan = Sedan('Sedan');
      expect(sedan, isA<Car>());
    });
  });

  group('SUV Tests', () {
    test('SUV is a subclass of Car', () {
      var suv = SUV('SUV');
      expect(suv, isA<Car>());
    });

    test('SUV describeType method override', () {
      var suv = SUV('SUV');
      expect(
          () => suv.describeType(), prints(isNot('This is a SUV vehicle\n')));
    });
  });
}
