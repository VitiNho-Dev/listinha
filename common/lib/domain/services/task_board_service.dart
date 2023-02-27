import 'package:result_dart/result_dart.dart';

import '../entities.dart/task_board.dart';
import '../exceptions/exception.dart';

abstract class TaskBoardService {
  AsyncResult<Unit, ListinhaExcption> createBoard(TaskBoard taskBoard);
}
