import 'package:flutter/material.dart';

enum Difficulty { easy, medium, hard }

class TaskModel {
  final String taskName;
  final Difficulty difficulty;
  final double length;
  final String deadline;

  TaskModel(
      {required this.taskName,
      required this.difficulty,
      required this.length,
      required this.deadline});
}
