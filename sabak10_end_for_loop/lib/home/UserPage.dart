// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sabak10_end_for_loop/app/model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserPage'),
      ),
      body: Center(
        child: Column(
          children: [
            student.image,
            Text(student.id.toString()),
            Text(student.name),
            Text(student.surName),
            Text(student.age.toString()),
            Text(student.email),
            Text(student.group.toString()),
          ],
        ),
      ),
    );
  }
}
