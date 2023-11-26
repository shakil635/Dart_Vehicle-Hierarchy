/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_vehicle_hierarchy_base.dart';

// TODO: Export any libraries intended for clients of this package.

class Vehicle {
  Vehicle(this.type);
  String type;
  void describeType() {
    print('This is a Generic vehicle');
  }
}

class Car extends Vehicle {
  Car(super.type);
}

class Sedan extends Car {
  Sedan(super.type);
}

class SUV extends Car {
  SUV(super.type);
  @override
  void describeType() {
    print('This is a Generic vehicle');
  }
}

/*
Practice Question 1: Vehicle Hierarchy
Task:

Create a class named Vehicle with a String 
field named type and a method named describeType, 
which prints a message using the type.
Create a subclass of Vehicle named Car 
and then create two Car subclasses named Sedan and SUV.
Override describeType in the SUV class to vary the output.
 */