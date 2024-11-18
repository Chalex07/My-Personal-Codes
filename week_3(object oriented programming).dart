// // Declaring a class in Dart

// class Person {
// // Properties of the class
// String name;
// int age;

// // Constructor
// Person(this.name, this.age);

// // Method to display person details
// void displayInfo() {
//   print('Name: $name, Age: $age');
// }
// }
// void main(){
//   Person person1= Person("Charles", 27);
//   person1.displayInfo();
//   var identity= Person("Charles", 27);
//   identity.displayInfo();
// }




// // Declaring a simple class in Dart

// class Car {

// String brand;

// String model;

// Car(this.brand, this.model);

// void showDetails() {
// print('Brand: $brand, Model: $model');
// }
// }

// void main() {
// // Creating an object of the Car class
// Car myCar = Car('Toyota', 'Corolla');

// // Calling the method using the object
// myCar.showDetails(); // Output: Brand: Toyota, Model: Corolla
// }

// class Fruit {
//     String? color;
//     String? fruitType;
//     String? taste;
//     String? cost;

// Fruit(this.color, this.fruitType, this.taste, this.cost);

// void showDetails(){
//     print('You are eating an $fruitType, that is $color in color and taste $taste, with the price being $cost');

// }
// }
// void main(){
//     Fruit myFruit = Fruit('Red', 'Apple', 'Sour', '50 dollars');
//     myFruit.showDetails();
// }



// // Default Constructor
// class MyDetails {
//   String name = 'Unknown';
//   int age = 0;
// }

// void main() {
//   MyDetails myDetails = MyDetails();
//   print("Name: ${myDetails.name}, Age: ${myDetails.age}");
// }

// // Parameterized Constructor
// class MyDetails {
//   String name;
//   int age;

//   // Parameterized constructor
//   MyDetails(this.name, this.age);
// }

// void main() {
//   // Creating an instance of MyDetails using the parameterized constructor
//   MyDetails myDetails = MyDetails('Allan', 25);
//   print("Name: ${myDetails.name}, Age: ${myDetails.age}");
// }



//  class Circle {
//   // Private property with underscore (_)
//   double _radius;

//   // Constructor to initialize the radius
//   Circle(this._radius);

//   // Getter method to access the private radius
//   double get radius => _radius;

//   // Setter method to update the radius with validation
//   set radius(double value) {
//     if (value > 0) {
//       _radius = value;
//     } else {
//       print('Radius must be greater than 0');
//     }
//   }


//   // Method to calculate area of the circle
//   double calculateArea() {
//     return 3.1416 * _radius * _radius; // Area = πr²
//   }
// }

// void main() {
//   // Creating an instance of Circle
//   Circle circle = Circle(5.0);

//   // Accessing the radius using getter
//   print("Initial radius: ${circle.radius}");

//   // Calculating and printing the area
//   print("Initial area: ${circle.calculateArea()}");

//   // Updating the radius using setter
//   circle.radius = 7.0;

//   // Accessing updated radius and area
//   print("Updated radius: ${circle.radius}");
//   print("Updated area: ${circle.calculateArea()}");

//   // Trying to set an invalid radius
//   circle.radius = 3.0; // This will trigger validation
// }




// // Base class (Superclass)
// class Vehicle {
//   String brand;
//   int year;

//   // Constructor for Vehicle
//   Vehicle(this.brand, this.year);

//   // Method to display vehicle info
//   void displayInfo() {
//     print("Brand: $brand");
//     print("Year: $year");
//   }
// }

// // Derived class (Subclass) inheriting from Vehicle
// class Car extends Vehicle {
//   String model;

//   // Constructor for Car which uses super to call the base class constructor
//   Car(String brand, int year, this.model) : super(brand, year);

//   // Method to display car-specific info
//   void displayCarInfo() {
//     displayInfo(); // Call the base class method
//     print("Model: $model");
//   }
// }

// void main() {
//   // Creating an instance of the Car class
//   Car car = Car('Toyota', 2021, 'Corolla');

//   // Accessing methods from both base and derived classes
//   car.displayCarInfo();
// }


// // Base class
// class Animal {
//   // Method to be overridden by derived classes
//   void makeSound() {
//     print("Animal makes a sound");
//   }
// }

// // Derived class Dog that overrides makeSound method
// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print("Dog barks");
//   }
// }

// // Derived class Cat that overrides makeSound method
// class Cat extends Animal {
//   @override
//   void makeSound() {
//     print("Cat meows");
//   }
// }

// void main() {
//   // Creating instances of Animal, Dog, and Cat
//   Animal animal = Animal();
//   Dog dog = Dog();
//   Cat cat = Cat();

//   // Calling makeSound method for each instance
//   animal.makeSound(); // Calls Animal's version
//   dog.makeSound();    // Calls Dog's version
//   cat.makeSound();    // Calls Cat's version
// }

//  // Abstract class Shape
// abstract class Shape {
//   // Abstract method (no implementation)
//   double calculateArea();

//   // Concrete method (with implementation)
//   void printInfo() {
//     print("This is a shape.");
//   }
// }

// // Concrete class Circle extends Shape
// class Circle extends Shape {
//   double radius;

//   // Constructor for Circle
//   Circle(this.radius);

//   // Override the abstract method to provide specific implementation
//   @override
//   double calculateArea() {
//     return 3.14 * radius * radius;
//   }
// }

// // Concrete class Rectangle extends Shape
// class Rectangle extends Shape {
//   double width;
//   double height;

//   // Constructor for Rectangle
//   Rectangle(this.width, this.height);

//   // Override the abstract method to provide specific implementation
//   @override
//   double calculateArea() {
//     return width * height;
//   }
// }

// void main() {
//   // Create instances of Circle and Rectangle
//   Circle circle = Circle(5.0);
//   Rectangle rectangle = Rectangle(10.0, 20.0);

//   // Using the common interface provided by the Shape abstract class
//   circle.printInfo();  // Calls the concrete method in the abstract class
//   print("Circle Area: ${circle.calculateArea()}");

//   rectangle.printInfo();  // Calls the concrete method in the abstract class
//   print("Rectangle Area: ${rectangle.calculateArea()}");
// }

// import 'dart:math'; // Import math library to use pi

// // Circle Class Definition
// class Circle {
//   double radius; // Instance variable to store the radius of the circle

//   // Constructor to initialize the radius
//   Circle(this.radius);

//   // Factory constructor to control instance creation
//   factory Circle.create(double radius) {
//     // Ensure the radius is positive before creating the instance
//     if (radius > 0) {
//       return Circle(radius); // Return a new Circle instance
//     } else {
//       // Throw an error if the radius is not valid
//       throw ArgumentError('Radius must be greater than zero');
//     }
//   }

//   // Method to calculate the area of the circle
//   double calculateArea() {
//     return pi * radius * radius; // Area formula: pi * radius^2
//   }
// }

// void main() {
//   // Using the factory constructor to create circle instances
//   Circle circle1 = Circle.create(5.0); // Create a circle with radius 5.0
//   Circle circle2 = Circle.create(10.0); // Create a circle with radius 10.0

//   // Print the area of the circles by calling the calculateArea method
//   print('Circle 1 Area: ${circle1.calculateArea()}'); // Output: Circle 1 Area
//   print('Circle 2 Area: ${circle2.calculateArea()}'); // Output: Circle 2 Area

//   // Example of error handling for invalid radius
//   try {
//     Circle circle3 = Circle.create(-3.0); // Invalid radius, will throw an error
//   } catch (e) {
//     print(e); // Catch and print the error message
//   }
// }


//  // Singleton class to manage file system operations
// class FileSystemManager {
//   // Static and final instance variable to hold the single instance of the class
//   static final FileSystemManager _instance = FileSystemManager._internal();

//   // Private constructor to restrict external instantiation
//   FileSystemManager._internal();

//   // Factory constructor to control the creation of the singleton instance
//   factory FileSystemManager() {
//     return _instance; // Always returns the same instance
//   }

//   // Method to simulate opening a file
//   void openFile(String fileName) {
//     print('Opening file: $fileName');
//   }

//   // Method to simulate writing to a file
//   void writeFile(String fileName, String content) {
//     print('Writing to file: $fileName with content: "$content"');
//   }
// }

// void main() {
//   // Create two references to the FileSystemManager singleton instance
//   FileSystemManager manager1 = FileSystemManager(); // Uses factory constructor
//   FileSystemManager manager2 = FileSystemManager(); // Returns the same instance

//   // Verify that both references point to the same singleton instance
//   print('Are manager1 and manager2 the same instance? ${identical(manager1, manager2)}');
//   print('HashCode of manager1: ${manager1.hashCode}');
//   print('HashCode of manager2: ${manager2.hashCode}');

//   // Calling methods on both references
//   manager1.openFile("data.txt");    // Opens the file using manager1
//   manager2.writeFile("data.txt", "Hello, Dart!"); // Writes to the file using manager2
// }

// // Base class Employee
// class Employee {
//   // Method that simulates an employee clocking in
//   void clockIn() {
//     print("Employee clocked in");
//   }
// }

// // Mixin for medical-related functionality
// mixin Medical {
//   // Method that simulates taking a patient's temperature
//   int takeTemperature() {
//     print("Taking temperature");
//     return 98; // Returns a sample temperature value
//   }
// }

// // Class Nurse extends Employee and mixes in Medical
// class Nurse extends Employee with Medical {
//   // Inherits clockIn from Employee
//   // Inherits takeTemperature from Medical
// }

// // Class Doctor extends Employee and mixes in Medical
// class Doctor extends Employee with Medical {
//   // Inherits clockIn from Employee
//   // Inherits takeTemperature from Medical

//   // Method specific to Doctor for performing surgery
//   void performSurgery() {
//     print("Performing surgery");
//   }
// }

// // Class Bartender extends Employee but does not mix in Medical
// class Bartender extends Employee {
//   // Inherits clockIn from Employee
//   // Does not have access to takeTemperature or performSurgery
// }

// void main() {
//   // Create instances of different employee types
//   Nurse nurse = Nurse();
//   Doctor doctor = Doctor();
//   Bartender bartender = Bartender();

//   // Use inherited methods
//   nurse.clockIn(); // Calls clockIn method from Employee class
//   nurse.takeTemperature(); // Calls takeTemperature from Medical mixin

//   doctor.clockIn(); // Calls clockIn method from Employee class
//   doctor.takeTemperature(); // Calls takeTemperature from Medical mixin
//   doctor.performSurgery(); // Calls Doctor-specific method

//   bartender.clockIn(); // Bartender can only clock in, as it doesn't mix in Medical
// }

// // Extending the String class with an extension method

// extension StringExtensions on String {

//  // Method to capitalize the first letter of a string

//  String capitalizeFirstLetter() {

//   if (this.isEmpty) {

//    return this;

//   }

//   return this[0].toUpperCase() + this.substring(1);

//  }

// }




// void main() {

//  // Create a String object

//  String message = "hello, world!";

  

//  // Use the extension method to capitalize the first letter

//  String capitalizedMessage = message.capitalizeFirstLetter();

  

//  // Print the result

//  print(capitalizedMessage); // Output: Hello, world!

// }

