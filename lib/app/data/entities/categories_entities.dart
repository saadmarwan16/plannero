// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:objectbox/objectbox.dart';

import 'package:plannero/app/data/entities/task_entities.dart';

@Entity()
class Category {
  int id;

  String name;
  int color;
  @Backlink()
  final ToMany<Task> tasks = ToMany<Task>();

  Category({
    this.id = 0,
    required this.name,
    required this.color,
  });

  @override
  String toString() => 'Category(id: $id, name: $name, color: $color)';
}

class CategoryView extends Equatable {
  int id;
  String name;
  int color;
  int numOfCompletedTasks;
  int totalNumOfTasks;
  List<Task> tasks;

  CategoryView({
    required this.id,
    required this.name,
    required this.color,
    required this.numOfCompletedTasks,
    required this.totalNumOfTasks,
    required this.tasks,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      color,
      tasks,
    ];
  }

  @override
  String toString() {
    return 'CategoryView(id: $id, name: $name, color: $color, numOfCompletedTasks: $numOfCompletedTasks, totalNumOfTasks: $totalNumOfTasks, tasks: $tasks)';
  }
}
