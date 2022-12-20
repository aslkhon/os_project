import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:os_project/mock.dart';
import 'package:os_project/models/course.dart';
import 'package:os_project/models/student.dart';
import 'package:os_project/screens/courses_screen.dart';
import 'package:os_project/screens/recognition_screen.dart';
import 'package:os_project/screens/registration_screen.dart';
import 'package:tuple/tuple.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void openCamera() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const RecognitionScreen(),
      ),
    );
  }

  List<Tuple2<Student, bool>> students =
      mockStudents.map((student) => Tuple2(student, true)).toList();

  List<Course> courses = mockCourses;

  String selectedCourse = mockCourses.first.id;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    const boldStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Face ID Attendance'),
        actions: [
          IconButton(
            onPressed: onInfoPressed,
            icon: const Icon(Icons.info_outline),
          ),
          const SizedBox(
            width: 8.0,
          )
        ],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 54.0,
                  child: Center(
                    child: Text(
                      'Today is ${DateFormat('MMMM dd, yyyy').format(
                        DateTime.now(),
                      )}',
                    ),
                  ),
                ),
                const ListTile(
                  title: Text('Students\' Attendance', style: boldStyle),
                  trailing: Text('Status', style: boldStyle),
                ),
                const Divider(),
                Expanded(
                  child: ListView.separated(
                    itemCount: students.length,
                    itemBuilder: (context, index) {
                      final row = students[index];
                      return ListTile(
                        title: Text(
                            '${row.item1.firstName} ${row.item1.lastName}'),
                        trailing: row.item2
                            ? const Text(
                                'Attended',
                                style: TextStyle(color: Colors.green),
                              )
                            : const Text(
                                'Absence',
                                style: TextStyle(color: Colors.grey),
                              ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                  ),
                ),
                const Divider(),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 16.0,
                  ),
                  child: DropdownButton<String>(
                    value: selectedCourse,
                    isExpanded: true,
                    items: courses
                        .map(
                          (e) => DropdownMenuItem(
                            value: e.id,
                            child: Text('${e.id} ${e.name}'),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCourse = value ?? courses.first.id;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: onRegisterUser,
                          icon: const Icon(Icons.people),
                          label: const Text('Register user'),
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: openCamera,
                          icon: const Icon(Icons.camera),
                          label: const Text('Open Camera'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (isLoading)
            Positioned.fill(
              child: Container(
                color: Colors.amber.withOpacity(0.2),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
    );
  }

  void onInfoPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CoursesScreen(courses: courses),
      ),
    );
  }

  void onRegisterUser() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const AddStudentBottomSheet();
      },
    );
  }
}

class AddStudentBottomSheet extends StatelessWidget {
  const AddStudentBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          const Text(
            'Add student',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'First Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Last Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegistrationScreen(),
                  ),
                );
              },
              child: const Text('Add user'),
            ),
          ),
        ],
      ),
    );
  }
}
