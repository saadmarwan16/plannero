// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:objectbox/objectbox.dart';
import 'package:plannero/app/data/entities/categories_entities.dart';

@Entity()
class Task extends Equatable {
  int id;

  String title;
  String description;
  bool isChecked;
  bool isFavorite;
  String date;
  int priority;
  int color;
  final ToOne<Category> category = ToOne<Category>();

  Task({
    this.id = 0,
    required this.title,
    required this.description,
    this.isChecked = false,
    this.isFavorite = false,
    required this.date,
    required this.priority,
    required this.color,
  });

  @override
  List<Object?> get props => [
    title,
    isChecked,
    date,
    priority,
    color,
    category,
  ];

  @override
  String toString() {
    return 'Task(id: $id, title: $title, isChecked: $isChecked, date: $date, priority: $priority, color: $color)';
  }
}
