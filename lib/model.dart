class Employee{
  String employeeName;
  String employeeAge;
  Employee(this.employeeName,this.employeeAge);

  Employee.fromJson(Map<String,dynamic> map){
    this.employeeName = map['employee_name'] ?? "null";
    this.employeeAge = map['employee_age'] ?? "null";
  }
  Map<String, dynamic> toJson() => {
    "name" : this.employeeName,
    "age" : this.employeeAge,
  };
}