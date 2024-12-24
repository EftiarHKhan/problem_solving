import 'dart:io';

void main() {
  final employeeManager = EmployeeManager();
  print(
      'Enter the name of the employee you want to search or type "exit" to close the program');
  while (true) {
    print('Type: ');
    String searchName = stdin.readLineSync()!;
    if (searchName == 'exit') {
      print('Close the program');
      break;
    }
    print('Search result: ${employeeManager.searchEmployee(searchName)}');
  }
}

abstract class Employee {
  List<String?> searchEmployee(String name);
}

class EmployeeManager extends Employee {
  final employeeList = [
    'John Doe',
    'Jane Doe',
    'Alice Johnson',
    'Bob Johnson',
    'Charlie Smith',
    'David Smith',
    'Eve Brown',
    'Frank Brown',
    'Grace Williams',
    'Henry Williams',
  ];

  @override
  List<String?> searchEmployee(String name) {
    return employeeList
        .where((element) => element.toLowerCase().contains(name.toLowerCase()))
        .toList();
  }
}
