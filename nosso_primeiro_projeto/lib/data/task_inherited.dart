import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required this.child}) : super(child: child);

  final Widget child;
  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/Dash.png', 3, 1, 1),
    Task('Andar de Bike', 'assets/images/Bike.webp', 2, 2, 1),
    Task('Meditar', 'assets/images/Meditar.jpeg', 5, 4, 4),
    Task('Ler', 'assets/images/Ler.jpg', 4, 5, 3),
    Task('Jogar', 'assets/images/Jogar.jpg', 1, 2, 4),
  ];

  void newTask(
      String name, String foto, int difficulty, int level, int maestryLevel) {
    taskList.add(Task(name, foto, difficulty, level, maestryLevel));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
