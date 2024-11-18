
// Abstraction: Abstract class defining a blueprint
abstract class Employee {
  String name; // Common property for all employees

  // Abstract method to calculate salary, must be implemented by subclasses
  double calculateSalary();
  
  // Constructor
  Employee(this.name);
}

// Encapsulation: Employee class with private data
class EmployeeDetails extends Employee {
  // Private variable for salary (encapsulation)
  double _salary;

  // Constructor calling the superclass constructor
  EmployeeDetails(String name, this._salary) : super(name);

  // Getter for salary
  double get salary => _salary;

  // Setter for salary with validation
  set salary(double value) {
    if (value > 0) {
      _salary = value;
    } else {
      print('Salary must be positive!');
    }
  }

  @override
  double calculateSalary() {
    return _salary; // Direct salary calculation
  }
}

// Inheritance: Manager class inheriting from EmployeeDetails
class Manager extends EmployeeDetails {
  Manager(String name, double salary) : super(name, salary);

  // Polymorphism: Overriding the calculateSalary method
  @override
  double calculateSalary() {
    // Managers get a bonus on top of their base salary
    return super.calculateSalary() * 1.2; // 20% bonus for managers
  }
}

// Inheritance: Developer class inheriting from EmployeeDetails
class Developer extends EmployeeDetails {
  Developer(String name, double salary) : super(name, salary);

  // Polymorphism: Overriding the calculateSalary method
  @override
  double calculateSalary() {
    // Developers get an additional allowance on top of their base salary
    return super.calculateSalary() + 1000; // Flat allowance for developers
  }
}

void main() {
  // Encapsulation: Creating employee objects with controlled access to data
  var manager = Manager('Alice', 5000);
  var developer = Developer('Bob', 4000);

  // Demonstrating encapsulation with controlled access to private data
  manager.salary = 5500; // Setting salary via setter
  developer.salary = -1000; // Invalid salary (negative value)

  // Demonstrating polymorphism: calling overridden methods
  print('${manager.name} Salary: ${manager.calculateSalary()}');
  print('${developer.name} Salary: ${developer.calculateSalary()}');
}
