part 'Student.dart';
part 'Teacher.dart';

enum PersonType { teacher, student }

class Person {
  final String id;
  final String name;

  Person({required this.id, required this.name});

  factory Person.create(PersonType pType, String id, String name) {
    if (pType == PersonType.teacher) {
      return Teacher(id: id, name: name);
    } else {
      return Student(id: id, name: name);
    }
  }
}
