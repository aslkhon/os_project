import 'package:flutter/material.dart';
import 'package:os_project/models/course.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key, required this.courses});

  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    const boldText = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 3.0),
              child: Text(
                'ID',
                style: boldText,
              ),
            ),
            title: Text(
              'Name',
              style: boldText,
            ),
            trailing: Text(
              'Creadits',
              style: boldText,
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      course.id,
                    ),
                  ),
                  title: Text(
                    course.name,
                  ),
                  trailing: Text(
                    '${course.credits} credits',
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
