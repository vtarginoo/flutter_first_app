import 'package:first_project/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required super.child,
  });

  final List<Task> taskList = [
    Task("Aprender Flutter",
        "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large", 3),
    Task(
        "Andar de Bike",
        "https://images.pexels.com/photos/161172/cycling-bike-trail-sport-161172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        2),
    Task(
        "Meditar",
        'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
        5),
    Task(
        "Ler",
        'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
        1),
    Task("Jogar", 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg', 3),
  ];

  void newTask (String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));

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
