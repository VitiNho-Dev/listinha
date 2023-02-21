import 'package:result_dart/result_dart.dart';

import '../entities.dart/task_board.dart';
import '../exceptions/exception.dart';
import '../services/task_board_service.dart';

abstract class CreateBoard {
  AsyncResult<Unit, ListinhaExcption> call(TaskBoard taskBoard);
}

class CreateBoardImpl implements CreateBoard {
  final TaskBoardService service;

  CreateBoardImpl(this.service);

  @override
  AsyncResult<Unit, ListinhaExcption> call(TaskBoard taskBoard) {
    return taskBoard
        .validator()
        .mapError<ListinhaExcption>(InvalidParams.new)
        .toAsyncResult()
        .pure(taskBoard)
        .flatMap(service.createBoard);
  }
}
