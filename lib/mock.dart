import 'package:os_project/models/course.dart';
import 'package:os_project/models/student.dart';

final mockStudents = [
  Student(
    id: 'U2010145',
    firstName: 'Asl',
    lastName: 'Khoshim',
    departmentId: 1,
  ),
  Student(
    id: 'U2010146',
    firstName: 'David',
    lastName: 'Lehman',
    departmentId: 1,
  ),
  Student(
    id: 'U2010147',
    firstName: 'Aziz',
    lastName: 'Akhmad',
    departmentId: 1,
  ),
];

final mockCourses = [
  Course(
    id: 'SOC-01',
    name: 'OS',
    credits: 3,
    departmentId: 1,
    professorId: 'U16010',
  ),
  Course(
    id: 'SOC-02',
    name: 'DB',
    credits: 3,
    departmentId: 1,
    professorId: 'U16010',
  ),
  Course(
    id: 'SOC-03',
    name: 'ECir',
    credits: 3,
    departmentId: 1,
    professorId: 'U16010',
  ),
];
