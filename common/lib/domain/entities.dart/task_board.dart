import 'package:result_dart/result_dart.dart';

import '../value_objects/text_vo.dart';
import '../value_objects/uuid_vo.dart';
import '../value_objects/value_object.dart';
import 'entity.dart';
import 'task.dart';

enum TaskBoardStatus { completed, pending, disabled }

class TaskBoard extends Entity {
  final UuidVO uuid;
  final List<Task> tasks;
  final TaskBoardStatus status;
  final TextVO title;

  TaskBoard({
    required this.uuid,
    required this.tasks,
    required this.status,
    required this.title,
  });

  factory TaskBoard.empyt() {
    return TaskBoard(
      uuid: const UuidVO(''),
      tasks: [],
      status: TaskBoardStatus.disabled,
      title: const TextVO(''),
    );
  }

  @override
  Validation validator([Object? _]) {
    return uuid
        .validator() //
        .flatMap(title.validator)
        .flatMap(_validateTasks);
  }

  Validation _validateTasks([Object? _]) {
    return tasks.fold<Validation>(const Success(unit), (value, task) {
      return value.flatMap(task.validator);
    });
  }
}
