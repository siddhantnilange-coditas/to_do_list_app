import 'package:flutter/material.dart';

enum TaskCategory {
  Grocery,
  Work,
  Sports,
  Design,
  University,
  Social,
  Music,
  Health,
  Movie,
  Home,
  CreateNew,
}

class TaskModel {
  String title;
  DateTime date;
  TimeOfDay time;
  int priority;
  TaskCategory category;

  TaskModel({
    required this.title,
    required this.date,
    required this.time,
    required this.priority,
    required this.category,
  });

  String getCategoryName() {
    switch (category) {
      case TaskCategory.Grocery:
        return 'Work';
      case TaskCategory.Work:
        return 'Food';
      case TaskCategory.Sports:
        return 'Study';
      case TaskCategory.Design:
        return 'Work';
      case TaskCategory.University:
        return 'Food';
      case TaskCategory.Social:
        return 'Study';
      case TaskCategory.Music:
        return 'Study';
      case TaskCategory.Health:
        return 'Work';
      case TaskCategory.Movie:
        return 'Food';
      case TaskCategory.Home:
        return 'Study';
      case TaskCategory.CreateNew:
        return 'Study';
      default:
        return 'Unknown';
    }
  }
}



class CategoryListModel {
  final String title;
  final String svgPath;

  CategoryListModel({
    required this.title,
    required this.svgPath,
  });
}



// import 'package:flutter/material.dart';

// class TaskModel {
//   String title;
//   DateTime date;
//   TimeOfDay time;
//   int priority;
//   String category;

//   TaskModel({
//     required this.title,
//     required this.date,
//     required this.time,
//     required this.priority,
//     required this.category,
//   });

  // Map<String, dynamic> toMap() {
  //   return {
  //     'title': title,
  //     'date': date.toIso8601String(),
  //     'time': time.toIso8601String(),
  //     'priority': priority,
  //     'category': category,
  //   };
  // }

  // factory Task.fromMap(Map<String, dynamic> map) {
  //   return Task(
  //     title: map['title'],
  //     date: DateTime.parse(map['date']),
  //     time: DateTime.parse(map['time']),
  //     priority: map['priority'],
  //     category: map['category'],
  //   );
  // }
// }
