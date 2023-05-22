import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required this.child}) : super(child: child);

  final Widget child;
  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/Dash.png', 3),
    Task('Andar de Bike', 'assets/images/Bike.webp', 2),
    Task('Meditar', 'assets/images/Meditar.jpeg', 5),
    Task('Ler', 'assets/images/Ler.jpg', 4),
    Task('Jogar', 'assets/images/Jogar.jpg', 1),
  ];

  void newTask(String name, String foto, int difficulty) {
    taskList.add(Task(name, foto, difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return true;
  }
}
