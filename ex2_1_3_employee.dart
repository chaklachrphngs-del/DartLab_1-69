
class Employee {
  String name;

  Employee(this.name);
  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(String name, this.hourlyRate, this.hoursWorked) : super(name);

  double calculateSalary() {
    return hourlyRate * hoursWorked;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee('A (Full-Time)', 25500.0),
    PartTimeEmployee('B (Part-Time)', 1500.0, 80), 
    FullTimeEmployee('C (Full-Time)', 30000.0),
  ];

  for (var emp in employees) {
    print('พนักงาน: ${emp.name} | เงินเดือนที่ได้รับ: ${emp.calculateSalary()} บาท');
  }
}